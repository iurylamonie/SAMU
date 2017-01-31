using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorChamado
{
    public partial class NovoChamadoSelecionado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tipo-nc-selecionado"].ToString() == "no")
                {
                    Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.ListarUltimo(1);
                    LabelTipo.Text = ocorrencia.Tipo;
                    LabelNomeSolicitante.Text = ocorrencia.NomeSolicitante;
                    LabelNomeVitima.Text = ocorrencia.NomeVitima;
                    Session["no-ocorrenciaId"] = ocorrencia.Id;
                }
                else if (Session["tipo-nc-selecionado"].ToString() == "do")
                {
                    Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(Session["ocorrenciaId-nc-selecionado"].ToString()));
                    LabelTipo.Text = ocorrencia.Tipo;
                    LabelNomeSolicitante.Text = ocorrencia.NomeSolicitante;
                    LabelNomeVitima.Text = ocorrencia.NomeVitima;
                    Session["no-ocorrenciaId"] = ocorrencia.Id;
                }
                
            }
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
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/Principal.aspx");
            }
        }
    }
}