using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Administrador.GerenciadorFuncionario
{
    public partial class NovoFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonConfirar_Click(object sender, EventArgs e)
        {
            if (Funcionalidade.Usuario.VerificarCPF(TextBoxCPF.Text))
            {
                LabelAvisoCPF.Visible = true;
            }
            else
            {
                LabelAvisoCPF.Visible = false;
                Entidade.Usuario usuario = new Entidade.Usuario
                {
                    Nome = TextBoxNome.Text,
                    Cpf = TextBoxCPF.Text,
                    Tipo = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Senha = Funcionalidade.Criptografia.SHA512("123")
                };

                Funcionalidade.Usuario.Criar(usuario);
                Response.Redirect("~/Administrador/GerenciadorFuncionario/Principal.aspx");
            }
        }

        protected void ButtonLimpar_Click(object sender, EventArgs e)
        {

        }
    }
}