using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorChamado
{
    public partial class DetalharChamado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabelNumeroOcorrencia.Text = "Chamado Nº " + Session["gc-chamado_id"].ToString();

                TextBoxAmbulanciaId.Text = Session["gc-ambulancia_id"].ToString();
                TextBoxHospitalId.Text = Session["gc-hospital_id"].ToString();
                TextBoxOcorrenciaId.Text = Session["gc-ocorrencia_id"].ToString();
                TextBoxChamadoId.Text = Session["gc-chamado_id"].ToString();

                Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(Session["gc-ocorrencia_id"].ToString()));
                TextBoxTipo.Text = ocorrencia.Tipo;
                TextBoxNomeSolicitante.Text = ocorrencia.NomeSolicitante;
                TextBoxNomeNomeVitima.Text = ocorrencia.NomeVitima;
            }
        }

        protected void ButtonEditar_Click(object sender, EventArgs e)
        {
            TextBoxAmbulanciaId.Enabled = true;
            TextBoxHospitalId.Enabled = true;


            ButtonEditar.Enabled = false;
            ButtonConfirar.Enabled = true;
        }

        protected void ButtonConfirar_Click(object sender, EventArgs e)
        {
            Entidade.Chamado chamado = new Entidade.Chamado
            {
                Id = int.Parse(TextBoxChamadoId.Text),
                Hospital_id = int.Parse(TextBoxHospitalId.Text),
                VeiculoAtendimento_id = int.Parse(TextBoxAmbulanciaId.Text),
                Ocorrencia_id = int.Parse(TextBoxOcorrenciaId.Text)
               
            };
            Funcionalidade.Chamado.Alterar(chamado);

            ButtonEditar.Enabled = true;
            ButtonConfirar.Enabled = false;

            TextBoxAmbulanciaId.Enabled = false;
            TextBoxHospitalId.Enabled = false;

            Session["gc-chamado_id"] = null;
            Session["gc-ambulancia_id"] = null;
            Session["gc-hospital_id"] = null;
            Session["gc-ocorrencia_id"] = null;


        }

        protected void ButtonDetalhar_Click(object sender, EventArgs e)
        {
            Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(Session["gc-ocorrencia_id"].ToString()));

            Session["idOcorrencia"] = ocorrencia.Id;
            Session["tipoOcorrencia"] = ocorrencia.Tipo;
            Session["nomeSolicitanteOcorrencia"] = ocorrencia.NomeSolicitante;
            Session["nomeVitimaOcorrencia"] = ocorrencia.NomeVitima;
            Session["quantidadeVitimasOcorrencia"] = ocorrencia.QuantidadeVitimas;
            Session["cepOcorrencia"] = ocorrencia.Cep;
            Session["enderecoOcorrencia"] = ocorrencia.Endereco;
            Session["infAdicionalOcorrencia"] = ocorrencia.InformacaoAdicional;


            Session["gc-chamado_id"] = null;
            Session["gc-ambulancia_id"] = null;
            Session["gc-hospital_id"] = null;
            Session["gc-ocorrencia_id"] = null;

            Response.Redirect("~/Atendente/GerenciadorOcorrencia/DetalharOcorrencia.aspx");
        }
    }
}