using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Funcionalidade
{
    public class Ocorrencia
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://localhost:51813/");
        }

        static public void Criar(Entidade.Ocorrencia ocorrencia)
        {
            string s = "=" + JsonConvert.SerializeObject(ocorrencia);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            IniciarHttp();
            httpClient.PostAsync("api/Ocorrencia/Criar", content);
        }
    }
}
