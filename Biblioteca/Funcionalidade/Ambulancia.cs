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
    public class Ambulancia
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://10.21.0.137/20131011110169/");
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Ambulancia> Listar(int _tipo)
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Ambulancia/ListarTodas");
            HttpResponseMessage rm = response.Result;
            string s = rm.Content.ReadAsStringAsync().Result;
            List<Entidade.Ambulancia> ambulancias = JsonConvert.DeserializeObject<List<Entidade.Ambulancia>>(s);
            return ambulancias;
        }

        public static void Deletar(string _placa)
        {
            IniciarHttp();
            httpClient.DeleteAsync("api/Ambulancia/Deletar/" + _placa);
        }

        public static void Criar(Entidade.Ambulancia _ambulancia)
        {
            IniciarHttp();
            string s = "=" + JsonConvert.SerializeObject(_ambulancia);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PostAsync("api/Ambulancia/Criar", content);
        }
    }
}
