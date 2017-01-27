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
    public class Chamado
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://localhost:51813/");
        }

        public static void Criar(Entidade.Chamado _chamado)
        {
            IniciarHttp();
            string s = "=" + JsonConvert.SerializeObject(_chamado);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PostAsync("api/Chamado/Criar", content);
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Chamado> Listar(int _usuario_id)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Chamado/Listar/" + _usuario_id);
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var chamados = JsonConvert.DeserializeObject<List<Entidade.Chamado>>(str);
                return chamados;
            }
            catch (AggregateException)
            {
                List<Entidade.Chamado> chamados = new List<Entidade.Chamado>();
                return chamados;
            }
            
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Chamado> ListarPorOcorrencia(int _ocorrencia_id)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Chamado/ListarPorOcorrencia/" + _ocorrencia_id);
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var chamados = JsonConvert.DeserializeObject<List<Entidade.Chamado>>(str);
                return chamados;
            }
            catch (AggregateException)
            {

                List<Entidade.Chamado> chamados = new List<Entidade.Chamado>();
                return chamados;
            }
            
        }

        public static void Alterar(Entidade.Chamado _chamado)
        {
            IniciarHttp();
            string s = "=" + JsonConvert.SerializeObject(_chamado);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PutAsync("api/Chamado/AlterarVeiculo/" + _chamado.Id, content);
            httpClient.PutAsync("api/Chamado/AlterarHospital/" + _chamado.Id, content);
        }

        static public Entidade.Chamado Consultar(int _id)
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Chamado/Consultar/" + _id);
            HttpResponseMessage rm = response.Result;
            string str = rm.Content.ReadAsStringAsync().Result;
            var chamado = JsonConvert.DeserializeObject<Entidade.Chamado>(str);
            return chamado;
        }
    }
}
