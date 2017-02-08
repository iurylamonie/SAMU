using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Funcionalidade
{
    public class VeiculoAtendimento
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://10.21.0.137/20131011110169/");
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.VeiculoAtendimento> Listar()
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/VeiculoAtendimento/ListarSB");
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var vAtendimento = JsonConvert.DeserializeObject<List<Entidade.VeiculoAtendimento>>(str);
                return vAtendimento;
            }
            catch (AggregateException)
            {

                List<Entidade.VeiculoAtendimento> vas = new List<Entidade.VeiculoAtendimento>();
                return vas;
            }
            
        }
    }
}
