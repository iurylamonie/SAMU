using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central
{
    public partial class CepTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonGerar_Click(object sender, EventArgs e)
        {
            HttpClient httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("https://viacep.com.br/");
            var reponse = httpClient.GetAsync("ws/RN/Natal/Pedro de Oliveira/json/");
            HttpResponseMessage rm = reponse.Result;
            string str = rm.Content.ReadAsStringAsync().Result;
            string pstr = str.Remove(0, 3);
            string strEnd = pstr.Remove(pstr.Count() - 2, 2);
            Correio endereco = JsonConvert.DeserializeObject<Correio>(strEnd);
            labelRua.Text = endereco.Cep;
        }
       
    }

    public class Correio
    {
        public string Cep { get; set; }
        public string Logradouro { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Localidade { get; set; }
        public string Uf { get; set; }
        public string Unidade { get; set; }
        public string IBGE { get; set; }
        public string Gia { get; set; }
    }
}