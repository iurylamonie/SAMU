using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace REST.Controllers
{
    [RoutePrefix("api/Ambulancia")]
    public class AmbulanciaController : ApiController
    {
        //Verificador
        /// <summary>
        /// Funções de retorno de Dados.
        /// Usado para retornar um campo específico.
        /// </summary>
        /// <param name="placa"></param>
        /// <returns></returns>

        [AcceptVerbs("GET")]
        [Route("RetornarPlaca/{placa}")]
        public string RetornarPlaca(string placa)
        {
            try
            {
                Models.SAMUDataContext sdc = new Models.SAMUDataContext();
                var r = (from a in sdc.Ambulancias
                         where a.placa == placa
                         select a.placa).Single();
                return r;
            }
            catch (Exception)
            {

                return null;
            }
        }




        /// <summary>
        /// Funções para retornar um ou mais ambulâncias.
        /// </summary>
        /// <param name="placa"></param>
        /// <param name="conteudo"></param>

        [AcceptVerbs("GET")]
        [Route("ListarTodas")]
        public IEnumerable<Models.Ambulancia> ListarTodas()
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = from a in sdc.Ambulancias  select a;
            return r.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("PorTipo/{tipo}")]
        public IEnumerable<Models.Ambulancia> PorTipo(string tipo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = from a in sdc.Ambulancias
                    where a.tipo == tipo
                    select a;
            return r.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("PorPlaca/{placa}")]
        public Models.Ambulancia PorPlaca(string placa)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from a in sdc.Ambulancias
                     where a.placa == placa
                     select a).Single();
            return r;
        }




        /// <summary>
        /// Funções para alterar dados.
        /// </summary>
        /// <param name="conteudo"></param>

        [AcceptVerbs("PUT")]
        [Route("AlterarTipo/{placa}")]
        public void AlterarTipo(string placa, [FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Ambulancia ambulancia = JsonConvert.DeserializeObject<Models.Ambulancia>(conteudo);
            var r = (from a in sdc.Ambulancias
                     where a.placa == placa
                     select a).Single();

            r.tipo = ambulancia.tipo;

            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("AlterarPlaca/{placa}")]
        public void AlterarPlaca(string placa, [FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Ambulancia ambulancia = JsonConvert.DeserializeObject<Models.Ambulancia>(conteudo);
            var r = (from a in sdc.Ambulancias
                     where a.placa == placa
                     select a).Single();

            r.placa = ambulancia.placa;

            sdc.SubmitChanges();
        }




        /// <summary>
        /// Funções para criar Ambulâncias.
        /// </summary>
        /// <param name="conteudo"></param>

        [AcceptVerbs("POST")]
        [Route("Criar")]
        public void InserirAmbulancia([FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Ambulancia ambulancia = JsonConvert.DeserializeObject<Models.Ambulancia>(conteudo);
            sdc.Ambulancias.InsertOnSubmit(ambulancia);
            sdc.SubmitChanges();
        }




        /// <summary>
        /// Funções para deletar ambulâncias.
        /// </summary>
        /// 
        [AcceptVerbs("DELETE")]
        [Route("Deletar/{placa}")]
        public void Deletar(string placa)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from a in sdc.Ambulancias
                     where a.placa == placa
                     select a).Single();
            sdc.Ambulancias.DeleteOnSubmit(r);
            sdc.SubmitChanges();
        }
    }
}