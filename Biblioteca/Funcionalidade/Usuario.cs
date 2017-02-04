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
    public class Usuario
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://localhost:51813/");
        }

        public static bool VerificarCPF(string _cpf)
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Usuario/RetornarCPF/" + _cpf);
            HttpResponseMessage responseMessage = response.Result;
            string s = responseMessage.Content.ReadAsStringAsync().Result;
            string rstr = JsonConvert.DeserializeObject<string>(s);
            if (_cpf == rstr)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool VerificarSenha(string _cpf, string _senha)
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Usuario/RetornarSenha/" + _cpf);
            HttpResponseMessage responseMessage = response.Result;
            string s = responseMessage.Content.ReadAsStringAsync().Result;
            string rstr = JsonConvert.DeserializeObject<string>(s);
            if (Criptografia.SHA512(_senha) == rstr)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //


        public static Entidade.Usuario ObterUsuario(string _cpf)
        {
            Entidade.Usuario usuario = new Entidade.Usuario();
            IniciarHttp();
            var response = httpClient.GetAsync("api/Usuario/Obter/" + _cpf);
            var responseMessage = response.Result;
            var s = responseMessage.Content.ReadAsStringAsync().Result;
            return usuario = JsonConvert.DeserializeObject<Entidade.Usuario>(s);
        }

        public static void AlterarCPF(string _cpfVelho, string _cpfNovo)
        {
            IniciarHttp();
            Entidade.Usuario usuario = new Entidade.Usuario { Cpf = _cpfNovo };
            string s = "=" + JsonConvert.SerializeObject(usuario);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PostAsync("api/Usuario/AlterarCPF/" + _cpfVelho, content);
        }

        public static void AlterarSenha(string _cpf, string _senha)
        {
            IniciarHttp();
            Entidade.Usuario usuario = new Entidade.Usuario { Senha = _senha };
            string s = "=" + JsonConvert.SerializeObject(usuario);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PutAsync("api/Usuario/AlterarSenha/" + _cpf, content);
        }

        public static void AlterarNome(string _cpf, string _nome)
        {
            IniciarHttp();
            Entidade.Usuario usuario = new Entidade.Usuario { Nome = _nome };
            string s = "=" + JsonConvert.SerializeObject(usuario);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PutAsync("api/Usuario/AlterarNome/" + _cpf, content);
        }


        //Funções do Administrador
        public static void Criar(Entidade.Usuario _usuario)
        {
            IniciarHttp();
            string s = "=" + JsonConvert.SerializeObject(_usuario);
            var content = new StringContent(s, Encoding.UTF8, "application/x-www-form-urlencoded");
            httpClient.PostAsync("api/Usuario/Criar", content);
        }

        public static void Deletar(string _cpf)
        {
            IniciarHttp();
            httpClient.DeleteAsync("api/Usuario/Deletar/" + _cpf);
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Usuario> ListarUsuarios(int _tipo)
        {
            IniciarHttp();
            var response = httpClient.GetAsync("api/Usuario/ListarTodos/" + _tipo);
            HttpResponseMessage rm = response.Result;
            string s = rm.Content.ReadAsStringAsync().Result;
            List<Entidade.Usuario> usuarios = JsonConvert.DeserializeObject<List<Entidade.Usuario>>(s);
            return usuarios;
        }
    }
}
