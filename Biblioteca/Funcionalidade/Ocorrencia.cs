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

        static public Entidade.Ocorrencia Consultar(int _id)
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Ocorrencia/Consultar/" + _id);
            HttpResponseMessage rm = response.Result;
            string str = rm.Content.ReadAsStringAsync().Result;
            var ocorrencia = JsonConvert.DeserializeObject<Entidade.Ocorrencia>(str);
            return ocorrencia;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Ocorrencia> Listar(int _usuario_id)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Ocorrencia/Listar/" + _usuario_id);
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var ocorrencias = JsonConvert.DeserializeObject<List<Entidade.Ocorrencia>>(str);
                return ocorrencias;
            }
            catch (AggregateException)
            {

                List<Entidade.Ocorrencia> ocorrencia = new List<Entidade.Ocorrencia>();
                return ocorrencia;
            }
            
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Ocorrencia> ListarSemChamado(int _usuario_id)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Ocorrencia/ListarSemChamado/" + _usuario_id);
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var ocorrencias = JsonConvert.DeserializeObject<List<Entidade.Ocorrencia>>(str);
                return ocorrencias;
            }
            catch (AggregateException)
            {

                List<Entidade.Ocorrencia> ocorrencia = new List<Entidade.Ocorrencia>();
                return ocorrencia;
            }

        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Ocorrencia> ListarEmAtendimento(int _usuario_id)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Ocorrencia/ListarEmAtendimento/" + _usuario_id);
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var ocorrencias = JsonConvert.DeserializeObject<List<Entidade.Ocorrencia>>(str);
                return ocorrencias;
            }
            catch (AggregateException)
            {

                List<Entidade.Ocorrencia> ocorrencia = new List<Entidade.Ocorrencia>();
                return ocorrencia;
            }

        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Ocorrencia> ListarFinalizados(int _usuario_id)
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Ocorrencia/ListarFinalizados/" + _usuario_id);
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var ocorrencias = JsonConvert.DeserializeObject<List<Entidade.Ocorrencia>>(str);
                return ocorrencias;
            }
            catch (AggregateException)
            {

                List<Entidade.Ocorrencia> ocorrencia = new List<Entidade.Ocorrencia>();
                return ocorrencia;
            }

        }

        public static void Alterar(Entidade.Ocorrencia _ocorrencia)
        {
            IniciarHttp();
            string s = "=" + JsonConvert.SerializeObject(_ocorrencia);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PutAsync("api/Ocorrencia/Alterar/" + _ocorrencia.Id, content);
        }

        public static void DeletarOcorrencia(int _id)
        {
            IniciarHttp();
            httpClient.DeleteAsync("api/Ocorrencia/Deletar/" + _id);
        }

        public static void AtualizarSituacao(Entidade.Ocorrencia _ocorrencia)
        {
            IniciarHttp();
            string s = "=" + JsonConvert.SerializeObject(_ocorrencia);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PutAsync("api/Ocorrencia/AtualizarSituacao/" + _ocorrencia.Id, content);
        }

       
    }
}
