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