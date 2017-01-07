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
                ButtonConfirar.Enabled = true;

                LabelCEP.Visible = true;
                TextBoxCEP.Visible = true;

                LabelCidade.Visible = false;
                TextBoxCidade.Visible = false;
                LabelBairro.Visible = false;
                TextBoxBairro.Visible = false;
                LabelRua.Visible = false;
                TextBoxRua.Visible = false;

                LabelNumeroResidencia.Visible = true;
                TextBoxNumeroResidencia.Visible = true;
            }
            else if (RadioButtonList1.SelectedValue == "Nomes")
            {
                ButtonConfirar.Enabled = true;
                LabelCEP.Visible = false;
                TextBoxCEP.Visible = false;

                LabelCidade.Visible = true;
                TextBoxCidade.Visible = true;
                LabelBairro.Visible = true;
                TextBoxBairro.Visible = true;
                LabelRua.Visible = true;
                TextBoxRua.Visible = true;

                LabelNumeroResidencia.Visible = true;
                TextBoxNumeroResidencia.Visible = true;
            }
        }

        protected void ButtonConfirar_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "CEP")
            {

            }
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