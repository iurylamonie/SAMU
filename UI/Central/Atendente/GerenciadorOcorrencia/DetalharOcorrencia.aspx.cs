using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorOcorrencia
{
    public partial class DetalharOcorrencia : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           /* LabelNumeroOcorrencia.Text = "Ocorrência Numero " + Session["idOcorrencia"].ToString();
            LabelTipo.Text = Session["tipoOcorrencia"].ToString();
            LabelNomeSolicitante.Text = Session["nomeSolicitanteOcorrencia"].ToString();
            LabelNomeVitima.Text = Session["nomeVitimaOcorrencia"].ToString();
            LabelQuantidadeVitimas.Text = Session["quantidadeVitimasOcorrencia"].ToString();
            LabelCEPinf.Text = Session["cepOcorrencia"].ToString();
            LabelEnderecoinf.Text = Session["enderecoOcorrencia"].ToString();
            LabelInfoAdicional.Text = Session["infAdicionalOcorrencia"].ToString();*/
            if (!IsPostBack)
            {
                LabelNumeroOcorrencia.Text = "Ocorrência Numero " + Session["idOcorrencia"].ToString();
                TextBoxTipo.Text = Session["tipoOcorrencia"].ToString();
                TextBoxNomeSolicitante.Text = Session["nomeSolicitanteOcorrencia"].ToString();
                TextBoxNomeNomeVitima.Text = Session["nomeVitimaOcorrencia"].ToString();
                TextBoxQuantidaVitimas.Text = Session["quantidadeVitimasOcorrencia"].ToString();
                TextBoxCEP.Text = Session["cepOcorrencia"].ToString();
                TextBoxEndereco.Text = Session["enderecoOcorrencia"].ToString();
                TextBoxInfAdicional.Text = Session["infAdicionalOcorrencia"].ToString();
            }
        }

        protected void ButtonEditar_Click(object sender, EventArgs e)
        {
            /*TextBoxTipo.Text = LabelTipo.Text;
            TextBoxNomeSolicitante.Text = LabelNomeSolicitante.Text;
            TextBoxNomeNomeVitima.Text = LabelNomeVitima.Text;
            TextBoxQuantidaVitimas.Text = LabelQuantidadeVitimas.Text;
            TextBoxCEP.Text = LabelCEPinf.Text;
            TextBoxEndereco.Text = LabelEnderecoinf.Text;
            TextBoxInfAdicional.Text = LabelInfoAdicional.Text;*/

           /* LabelTipo.Visible = false;
            LabelNomeSolicitante.Visible = false;
            LabelNomeVitima.Visible = false;
            LabelQuantidadeVitimas.Visible = false;
            LabelCEPinf.Visible = false;
            LabelEnderecoinf.Visible = false;
            LabelInfoAdicional.Visible = false;*/

            TextBoxTipo.Visible = true;
            TextBoxNomeSolicitante.Visible = true;
            TextBoxNomeNomeVitima.Visible = true;
            TextBoxQuantidaVitimas.Visible = true;
            TextBoxCEP.Visible = true;
            TextBoxEndereco.Visible = true;
            TextBoxInfAdicional.Visible = true;

            ButtonEditar.Enabled = false;
            ButtonConfirar.Enabled = true;
            TextBoxTipo.Enabled = true;
            TextBoxNomeSolicitante.Enabled = true;
            TextBoxNomeNomeVitima.Enabled = true;
            TextBoxQuantidaVitimas.Enabled = true;
            TextBoxCEP.Enabled = true;
            TextBoxEndereco.Enabled = true;
            TextBoxInfAdicional.Enabled = true;
        }

        protected void ButtonConfirar_Click(object sender, EventArgs e)
        {
            Entidade.Ocorrencia ocorrencia = new Entidade.Ocorrencia
            {
                Id = int.Parse(Session["idOcorrencia"].ToString()),
                Tipo = TextBoxTipo.Text,
                NomeSolicitante = TextBoxNomeSolicitante.Text,
                NomeVitima = TextBoxNomeNomeVitima.Text,
                QuantidadeVitimas = int.Parse(TextBoxQuantidaVitimas.Text),
                Cep = TextBoxCEP.Text,
                Endereco = TextBoxEndereco.Text,
                InformacaoAdicional = TextBoxInfAdicional.Text
            };
            Funcionalidade.Ocorrencia.Alterar(ocorrencia);

            Session["idOcorrencia"] = ocorrencia.Id;
            Session["tipoOcorrencia"] = ocorrencia.Tipo;
            Session["nomeSolicitanteOcorrencia"] = ocorrencia.NomeSolicitante;
            Session["nomeVitimaOcorrencia"] = ocorrencia.NomeVitima;
            Session["quantidadeVitimasOcorrencia"] = ocorrencia.QuantidadeVitimas;
            Session["cepOcorrencia"] = ocorrencia.Cep;
            Session["enderecoOcorrencia"] = ocorrencia.Endereco;
            Session["infAdicionalOcorrencia"] = ocorrencia.InformacaoAdicional;

            LabelNumeroOcorrencia.Text = "Ocorrência Numero " + Session["idOcorrencia"].ToString();
            TextBoxTipo.Text = Session["tipoOcorrencia"].ToString();
            TextBoxNomeSolicitante.Text = Session["nomeSolicitanteOcorrencia"].ToString();
            TextBoxNomeNomeVitima.Text = Session["nomeVitimaOcorrencia"].ToString();
            TextBoxQuantidaVitimas.Text = Session["quantidadeVitimasOcorrencia"].ToString();
            TextBoxCEP.Text = Session["cepOcorrencia"].ToString();
            TextBoxEndereco.Text = Session["enderecoOcorrencia"].ToString();
            TextBoxInfAdicional.Text = Session["infAdicionalOcorrencia"].ToString();

            ButtonEditar.Enabled = true;
            ButtonConfirar.Enabled = false;
            TextBoxTipo.Enabled = false;
            TextBoxNomeSolicitante.Enabled = false;
            TextBoxNomeNomeVitima.Enabled = false;
            TextBoxQuantidaVitimas.Enabled = false;
            TextBoxCEP.Enabled = false;
            TextBoxEndereco.Enabled = false;
            TextBoxInfAdicional.Enabled = false;
        }

        protected void GridViewChamados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                Entidade.Chamado chamado = Funcionalidade.Chamado.Consultar(int.Parse(GridViewChamados.Rows[index].Cells[0].Text));
                Session["gc-chamado_id"] = chamado.Id;
                Session["gc-hospital_id"] = chamado.Hospital_id;
                Session["gc-ocorrencia_id"] = chamado.Ocorrencia_id;
                Session["gc-ambulancia_id"] = chamado.VeiculoAtendimento_id;
                Response.Redirect("~/Atendente/GerenciadorChamado/DetalharChamado.aspx");
            }
        }

        protected void ButtonNovoChamado_Click(object sender, EventArgs e)
        {
            Session["tipo-nc-selecionado"] = "do";
            Session["ocorrenciaId-nc-selecionado"] = Session["idOcorrencia"];
            Response.Redirect("~/Atendente/GerenciadorChamado/NovoChamadoSelecionado.aspx");
        }
    }
}