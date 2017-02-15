using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente
{
    public partial class Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                string codigoOcorrencia;
                int index = Convert.ToInt32(e.CommandArgument);
                codigoOcorrencia = GridView1.Rows[index].Cells[0].Text;
                Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(codigoOcorrencia));
                Session["idOcorrencia"] = ocorrencia.Id;
                Session["tipoOcorrencia"] = ocorrencia.Tipo;
                Session["nomeSolicitanteOcorrencia"] = ocorrencia.NomeSolicitante;
                Session["nomeVitimaOcorrencia"] = ocorrencia.NomeVitima;
                Session["quantidadeVitimasOcorrencia"] = ocorrencia.QuantidadeVitimas;
                Session["cepOcorrencia"] = ocorrencia.Cep;
                Session["enderecoOcorrencia"] = ocorrencia.Endereco;
                Session["infAdicionalOcorrencia"] = ocorrencia.InformacaoAdicional;
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/DetalharOcorrencia.aspx");
            }
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Session["gc-chamado_id"] = GridView2.Rows[index].Cells[0].Text;
                Session["gc-hospital_id"] = GridView2.Rows[index].Cells[2].Text;
                Session["gc-ocorrencia_id"] = GridView2.Rows[index].Cells[3].Text;
                Session["gc-ambulancia_id"] = GridView2.Rows[index].Cells[4].Text;
                Response.Redirect("~/Atendente/GerenciadorChamado/DetalharChamado.aspx");
            }
        }
    }
}