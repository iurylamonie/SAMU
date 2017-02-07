using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Administrador.GerenciadorFuncionario
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewAdministradores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletar")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                string cpf = GridViewAdministradores.Rows[index].Cells[1].ToString();
                Funcionalidade.Usuario.Deletar(cpf);
                Response.Redirect("~/Administrador/GerenciadorFuncionario/Principal.aspx");
            }
        }

        protected void GridViewSocorristas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletar")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                string cpf = GridViewSocorristas.Rows[index].Cells[1].ToString();
                Funcionalidade.Usuario.Deletar(cpf);
                Response.Redirect("~/Administrador/GerenciadorFuncionario/Principal.aspx");
            }
        }

        protected void GridViewAtendentes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletar")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                string cpf = GridViewAtendentes.Rows[index].Cells[1].ToString();
                Funcionalidade.Usuario.Deletar(cpf);
                Response.Redirect("~/Administrador/GerenciadorFuncionario/Principal.aspx");
            }
        }
    }
}