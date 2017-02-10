using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Administrador.GerenciadorHospital
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletar")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                int idHospital = int.Parse(GridView1.Rows[index].Cells[0].ToString());
                Funcionalidade.Hospital.Deletar(idHospital);
                Response.Redirect("~/Administrador/GerenciadorHospital/Principal.aspx");
            }
        }
    }
}