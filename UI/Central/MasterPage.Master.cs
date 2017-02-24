using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelNomeFuncionario.Text = Session["nome"].ToString();
        }

        protected void ButtonSair_Click(object sender, EventArgs e)
        {
            Session["nome"] = null;
            Session["CPF"] = null;
            Session["tipo"] = null;
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}