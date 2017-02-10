using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Administrador
{
    public partial class EditarDados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelNomeFuncionario.Text = Session["nome"].ToString();
            LabelNome.Text = Session["nome"].ToString();
            LabelCPF.Text = Session["cpf"].ToString();
        }

        protected void ButtonAlterarSenha_Click(object sender, EventArgs e)
        {
            TextBoxNovaSenha.Visible = true;
            ButtonCancelar.Visible = true;
            ButtonConfirmar.Visible = true;
            ButtonAlterarSenha.Visible = false;
        }

        protected void ButtonCancelar_Click(object sender, EventArgs e)
        {
            TextBoxNovaSenha.Visible = false;
            ButtonCancelar.Visible = false;
            ButtonConfirmar.Visible = false;
            ButtonAlterarSenha.Visible = true;
        }

        protected void ButtonConfirmar_Click(object sender, EventArgs e)
        {
            Funcionalidade.Usuario.AlterarSenha(Session["cpf"].ToString(), TextBoxNovaSenha.Text);

            TextBoxNovaSenha.Visible = false;
            ButtonCancelar.Visible = false;
            ButtonConfirmar.Visible = false;
            ButtonAlterarSenha.Visible = true;
        }
    }
}