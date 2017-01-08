using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente
{
    public partial class Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                DataListOcorrencias.DataSource = CarregarTabelaTest();
                DataListOcorrencias.DataBind();
                DataListChamados.DataSource = CarregarTabelaTest();
                DataListChamados.DataBind();
            }
        }

        private DataView CarregarTabelaTest()
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add(new DataColumn("Id", typeof(int)));
            dt.Columns.Add(new DataColumn("Tipo", typeof(string)));
            dr = dt.NewRow();
            dr[0] = 1;
            dr[1] = "Iury";
            dt.Rows.Add(dr);
            dr = dt.NewRow();
            dr[0] = 2;
            dr[1] = "Kadson";
            dt.Rows.Add(dr);

            DataView dv = new DataView(dt);
            return dv;
        }
    }
}