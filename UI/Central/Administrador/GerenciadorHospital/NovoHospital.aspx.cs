using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Administrador.GerenciadorHospital
{
    public partial class NovoHospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonConfirar_Click(object sender, EventArgs e)
        {
            Entidade.Hospital hospital = new Entidade.Hospital
            {
                Nome = TextBoxNome.Text,
                Endereco = TextBoxEndereco.Text,
                Tipo = TextBoxTipo.Text
            };

            Funcionalidade.Hospital.Criar(hospital);
            Response.Redirect("~/Administrador/GerenciadorHospital/Principal.aspx");
        }
    }
}