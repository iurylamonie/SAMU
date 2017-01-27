using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace REST.Controllers
{
    [RoutePrefix("api/Usuario")]
    public class UsuarioController : ApiController
    {
        //Verificadores

        /// <summary>
        /// Funções de retorno de Dados.
        /// Usado para retornar um campo específico.
        /// </summary>
        /// <returns>string</returns>

        [AcceptVerbs("GET")]
        [Route("RetornarCPF/{cpf}")]
        public string RetornarCPF(string cpf)
        {
            try
            {
                Models.SAMUDataContext sdc = new Models.SAMUDataContext();
                var r = (from u in sdc.Usuarios
                         where u.cpf == cpf
                         select u.cpf).Single();
                return r;
            }
            catch (InvalidOperationException)
            {
                return null;
            }
        }

        [AcceptVerbs("GET")]
        [Route("RetornarSenha/{cpf}")]
        public string RetornarSenha(string cpf)
        {
            try
            {
                Models.SAMUDataContext sdc = new Models.SAMUDataContext();
                var r = (from u in sdc.Usuarios
                         where u.cpf == cpf
                         select u.senha).Single();
                return r;
            }
            catch (InvalidOperationException)
            {

                return null;
            }
        }

        [AcceptVerbs("GET")]
        [Route("RetornarNome/{nome}")]
        public string RetornarNome(string nome)
        {
            try
            {
                Models.SAMUDataContext sdc = new Models.SAMUDataContext();
                var r = (from u in sdc.Usuarios
                         where u.nome == nome
                         select u.nome).Single();
                return r;
            }
            catch (InvalidOperationException)
            {
                return null;
            }

        }

        /// <summary>
        /// Funções para retornar um ou mais usuários.
        /// </summary>
        /// <param name="codigoEmail"></param>
        /// <returns></returns>

        [AcceptVerbs("GET")]
        [Route("Obter/{cpf}")]
        public Models.Usuario Obter(string cpf)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from u in sdc.Usuarios
                     where u.cpf == cpf
                     select u).Single();
            return r;
        }

        [AcceptVerbs("GET")]
        [Route("ListarTodos/{tipo}")]
        public List<Models.Usuario> ListarTodos(int tipo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = from u in sdc.Usuarios where u.tipo == tipo select u;
            return r.ToList();
        }

        /// <summary>
        /// Funções para alterar dados.
        /// </summary>
        /// <param name="conteudo"></param>

        [AcceptVerbs("PUT")]
        [Route("AlterarCPF/{cpf}")]
        public void AlterarCPF(string cpf, [FromBody] string conteudo)
        {
            Models.Usuario usuario = JsonConvert.DeserializeObject<Models.Usuario>(conteudo);
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from u in sdc.Usuarios
                     where u.cpf == cpf
                     select u).Single();
            r.cpf = usuario.cpf;
            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("AlterarNome/{cpf}")]
        public void AlterarNome(string cpf, [FromBody] string conteudo)
        {
            Models.Usuario usuario = JsonConvert.DeserializeObject<Models.Usuario>(conteudo);
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from u in sdc.Usuarios
                     where u.cpf == cpf
                     select u).Single();
            r.nome = usuario.nome;
            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("AlterarSenha/{cpf}")]
        public void AlterarSenha(string cpf, [FromBody] string conteudo)
        {
            Models.Usuario usuario = JsonConvert.DeserializeObject<Models.Usuario>(conteudo);
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from u in sdc.Usuarios
                     where u.cpf == cpf
                     select u).Single();
            r.senha = usuario.senha;
            sdc.SubmitChanges();
        }

        /// <summary>
        /// Funções para criar usuários.
        /// </summary>
        /// <param name="conteudo"></param>

        [AcceptVerbs("POST")]
        [Route("Criar")]
        public void Criar([FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Usuario usuario = JsonConvert.DeserializeObject<Models.Usuario>(conteudo);
            sdc.Usuarios.InsertOnSubmit(usuario);
            sdc.SubmitChanges();
        }

        /// <summary>
        /// Funções para deletar usuarios.
        /// </summary>
        /// <param name="codigoEmail">É usada para identificar o usuário que terá seu campo alterado.</param>
        /// <param name="conteudo">Tem os dados necessarios para realizar a alteração.</param>

        [AcceptVerbs("DELETE")]
        [Route("Deletar/{codigoEmail}")]
        public void Deletar(string cpf)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from u in sdc.Usuarios
                     where u.cpf == cpf
                     select u).Single();
            sdc.Usuarios.DeleteOnSubmit(r);
            sdc.SubmitChanges();
        }
    }
}
