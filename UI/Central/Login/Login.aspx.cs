using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Funcionalidade.Usuario.VerificarCPF(TextBoxUsuario.Text))
                {
                    if (Funcionalidade.Usuario.VerificarSenha(TextBoxUsuario.Text, TextBoxSenha.Text))
                    {
                        Entidade.Usuario usuario = Funcionalidade.Usuario.ObterUsuario(TextBoxUsuario.Text);
                        Session["id"] =  usuario.Id;
                        Session["nome"] = usuario.Nome;
                        Session["CPF"] = usuario.Cpf;
                        Session["tipo"] = usuario.Tipo;
                        if (usuario.Tipo == 0)
                        {
                            Response.Redirect("~/Administrador/Inicial.aspx");
                            LabelAviso.Visible = false;
                        }
                        else if (usuario.Tipo == 1)
                        {
                            Response.Redirect("~/Atendente/Inicial.aspx");
                            LabelAviso.Visible = false;
                        }
                        else if (usuario.Tipo == 2)
                        {
                            LabelAviso.Text = "Você não tem permissão para usar esse serviço!";
                            Session["id"] = null;
                            Session["nome"] = null;
                            Session["CPF"] = null;
                            Session["tipo"] = null;
                            LabelAviso.Visible = true;
                        }
                    }
                    else
                    {

                        LabelAviso.Text = "Senha Incorreta";
                        LabelAviso.Visible = true;
                    }
                }
                else
                {
                    LabelAviso.Text = "CPF invalido";
                    LabelAviso.Visible = true;
                }
            }
            catch (Exception)
            {

                LabelAviso.Text = "Serviço Off-line";
                LabelAviso.Visible = true;
            }
            
        }
    }
}