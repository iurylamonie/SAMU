using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorChamado
{
    public partial class NovoChamado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewHospital_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Adicionar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                LabelHospital.Text = GridViewHospital.Rows[index].Cells[1].Text;
                Session["no-hospitalId"] = GridViewHospital.Rows[index].Cells[0].Text;
            }
        }

        protected void GridViewAmbulancia_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Adicionar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                LabelAmbulancia.Text = GridViewAmbulancia.Rows[index].Cells[0].Text;
                Session["no-veiculoId"] = GridViewAmbulancia.Rows[index].Cells[0].Text;
            }
        }

        protected void GridViewOcorrencias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Adicionar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                LabelTipo.Text = GridViewOcorrencias.Rows[index].Cells[1].Text;
                LabelNomeSolicitante.Text = GridViewOcorrencias.Rows[index].Cells[2].Text;
                LabelNomeVitima.Text = GridViewOcorrencias.Rows[index].Cells[3].Text;
                Session["no-ocorrenciaId"] = GridViewOcorrencias.Rows[index].Cells[0].Text;
            }
        }

        protected void ButtonCriar_Click(object sender, EventArgs e)
        {
            if (LabelHospital.Text == "" || LabelTipo.Text == "" || LabelAmbulancia.Text == "")
            {
                LabelAviso.Visible = true;
            }
            else
            {
                LabelAviso.Visible = false;

                Entidade.Chamado chamado = new Entidade.Chamado
                {
                    VeiculoAtendimento_id = int.Parse(Session["no-veiculoId"].ToString()),
                    Hospital_id = int.Parse(Session["no-hospitalId"].ToString()),
                    Ocorrencia_id = int.Parse(Session["no-ocorrenciaId"].ToString()),
                };
                Funcionalidade.Chamado.Criar(chamado);

                Entidade.Ocorrencia ocorrencia = new Entidade.Ocorrencia
                {
                    Id = int.Parse(Session["no-ocorrenciaId"].ToString()),
                    Situacao = "Atendimento"
                };
                Funcionalidade.Ocorrencia.AtualizarSituacao(ocorrencia);
                Response.Redirect("~/Atendente/GerenciadorChamado/Principal.aspx");
            }
        }
    }
}