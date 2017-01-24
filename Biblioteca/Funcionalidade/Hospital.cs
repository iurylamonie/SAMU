using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.ComponentModel;

namespace Funcionalidade
{
    public class Hospital
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://localhost:51813/");
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Hospital> Listar()
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Hospital/Listar");
            HttpResponseMessage rm = response.Result;
            string str = rm.Content.ReadAsStringAsync().Result;
            var hospitais = JsonConvert.DeserializeObject<List<Entidade.Hospital>>(str);
            return hospitais;
        }
    }
}
