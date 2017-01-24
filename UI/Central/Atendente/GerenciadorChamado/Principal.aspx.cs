using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorChamado
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewChamados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Session["gc-chamado_id"] = GridViewChamados.Rows[index].Cells[0].Text;
                Session["gc-hospital_id"] = GridViewChamados.Rows[index].Cells[1].Text;
                Session["gc-ocorrencia_id"] = GridViewChamados.Rows[index].Cells[2].Text;
                Session["gc-ambulancia_id"]  = GridViewChamados.Rows[index].Cells[3].Text;
                Response.Redirect("~/Atendente/GerenciadorChamado/DetalharChamado.aspx");
            }
        }
    }
}