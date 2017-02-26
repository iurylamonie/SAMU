using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorOcorrencia
{
    public partial class NovaOcorrencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "CEP")
            {
                ButtonConfirar.Enabled = false;

                LabelCEP.Visible = true;
                TextBoxCEP.Visible = true;

                LabelCidade.Visible = true;
                TextBoxCidade.Visible = true;
                LabelBairro.Visible = true;
                TextBoxBairro.Visible = true;
                LabelRua.Visible = true;
                TextBoxRua.Visible = true;

                LabelNumeroResidencia.Visible = true;
                TextBoxNumeroResidencia.Visible = true;

                //Enabled

                TextBoxCidade.Enabled = false;
                TextBoxBairro.Enabled = false;
                TextBoxRua.Enabled = false;

                TextBoxCEP.Text = null;
                TextBoxCidade.Text = null;
                TextBoxBairro.Text = null;
                TextBoxRua.Text = null;
            }
            else if (RadioButtonList1.SelectedValue == "Nomes")
            {
                ButtonConfirar.Enabled = true;
                LabelCEP.Visible = false;
                TextBoxCEP.Visible = false;
                LabelAvisoCep.Visible = false;

                LabelCidade.Visible = true;
                TextBoxCidade.Visible = true;
                LabelBairro.Visible = true;
                TextBoxBairro.Visible = true;
                LabelRua.Visible = true;
                TextBoxRua.Visible = true;

                LabelNumeroResidencia.Visible = true;
                TextBoxNumeroResidencia.Visible = true;

                TextBoxCidade.Enabled = true;
                TextBoxBairro.Enabled = true;
                TextBoxRua.Enabled = true;

                TextBoxCEP.Text = null;
                TextBoxCidade.Text = null;
                TextBoxBairro.Text = null;
                TextBoxRua.Text = null;
            }
        }

        protected void ButtonConfirar_Click(object sender, EventArgs e)
        {
            Entidade.Ocorrencia ocorrencia = new Entidade.Ocorrencia
            {
                Tipo = DropDownListTipo.Text,
                NomeSolicitante = TextBoxNomeSolicitante.Text,
                NomeVitima = TextBoxNomeNomeVitima.Text,
                QuantidadeVitimas = int.Parse(DropDownList1.Text),
                Cep = TextBoxCEP.Text,
                Endereco = TextBoxCidade.Text + ", " + TextBoxBairro.Text + ", " + TextBoxRua.Text + ", " + TextBoxNumeroResidencia.Text,
                InformacaoAdicional = TextBoxInfAdicional.Text,
                Situacao = "Espera",
                Usuario_id = 1,
                Data = DateTime.Now

            };
            Funcionalidade.Ocorrencia.Criar(ocorrencia);

            ButtonConfirar.Enabled = false;
            ButtonLimpar.Enabled = false;

            titulosinputask.Visible = true;
            ButtonSim.Visible = true;
            ButtonNao.Visible = true;
            

        }

        protected void TextBoxCEP_TextChanged(object sender, EventArgs e)
        {
            Entidade.Endereco endereco = Funcionalidade.ViaCEP.ConsultarPorCep(TextBoxCEP.Text);
            if (endereco.Logradouro == null)
            {
                LabelAvisoCep.Text = "CEP Não encontrado";
                LabelAvisoCep.Visible = true;
                ButtonConfirar.Enabled = false;
            }
            else
            {
                ButtonConfirar.Enabled = true;
                TextBoxCidade.Text = endereco.Localidade;
                TextBoxBairro.Text = endereco.Bairro;
                TextBoxRua.Text = endereco.Logradouro;
            }


        }

        protected void ButtonNao_Click(object sender, EventArgs e)
        {
            titulosinputask.Visible = false;
            ButtonSim.Visible = false;
            ButtonNao.Visible = false;
            Response.Redirect("~/Atendente/GerenciadorOcorrencia/Principal.aspx");
        }

        protected void ButtonSim_Click(object sender, EventArgs e)
        {
            Session["tipo-nc-selecionado"] = "no";
            Response.Redirect("~/Atendente/GerenciadorChamado/NovoChamadoSelecionado.aspx");
        }

        /*protected void TextBoxCEP_TextChanged(object sender, EventArgs e)
        {
            TextBoxRua.Enabled = false;
            if ((TextBoxCEP.Text != null) || (TextBoxCEP.Text != ""))
            {
                TextBoxRua.Enabled = false;
                TextBoxNomeBairro.Enabled = false;
                TextBoxNomeBairro.Text = "Bairro Pajuraça";
                TextBoxRua.Text = "Rua Pedro de Oliveira";
            }
            else
            {
                TextBoxRua.Enabled = true;
                TextBoxNomeBairro.Enabled = true;
                TextBoxNomeBairro.Text = "";
                TextBoxRua.Text = "";
            }
        }*/
    }
}