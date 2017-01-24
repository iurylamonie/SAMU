using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;

namespace REST.Controllers
{
    [RoutePrefix("api/Chamado")]
    public class ChamadoController : ApiController
    {
        [AcceptVerbs("POST")]
        [Route("Criar")]
        public void Criar([FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Chamado chamado = JsonConvert.DeserializeObject<Models.Chamado>(conteudo);
            sdc.Chamados.InsertOnSubmit(chamado);
            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("AlterarVeiculo/{id}")]
        public void AlterarVeiculo(int id, [FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var chamado = JsonConvert.DeserializeObject<Models.Chamado>(conteudo);
            var r = (from c in sdc.Chamados
                     where c.id == id
                     select c).Single();

            r.VeiculoAtendimento_id = chamado.VeiculoAtendimento_id;

            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("AlterarHospital/{id}")]
        public void AlterarHospital(int id, [FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var chamado = JsonConvert.DeserializeObject<Models.Chamado>(conteudo);
            var r = (from c in sdc.Chamados
                     where c.id == id
                     select c).Single();

            r.Hospital_id = chamado.Hospital_id;

            sdc.SubmitChanges();
        }

        [AcceptVerbs("GET")]
        [Route("ListarPorOcorrencia/{ocorrencia_id}")]
        public List<Models.Chamado> ListarPorOcorrencia(int ocorrencia_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = from c in sdc.Chamados
                    where c.Ocorrencia_id == ocorrencia_id
                    select c;
            return r.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("Listar/{atendente_id}")]
        public List<Models.Chamado> Listar(int atendente_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = from c in sdc.Chamados
                    where c.Ocorrencia.usuario_id == atendente_id
                    orderby c.id descending
                    select c;
            return r.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("ListarEmAtendimento/{atendente_id}")]
        public List<Models.Chamado> ListarEmAtendimento(int atendente_id)
        {
            List<Models.Chamado> chamados = new List<Models.Chamado>();
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();

            var ocorrencias = from o in sdc.Ocorrencias
                              where o.usuario_id == atendente_id && o.situacao == "Atendimento"
                              select o;

            foreach (var item in ocorrencias)
            {
                var chamadosOco = from c in sdc.Chamados
                                  where c.Ocorrencia_id == item.id
                                  select c;
                foreach (var obj in chamadosOco)
                {
                    chamados.Add(obj);
                }
            }

            return chamados;
        }

        [AcceptVerbs("GET")]
        [Route("Consultar/{id}")]
        public Models.Chamado Consultar(int id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var chamado = (from c in sdc.Chamados
                               where c.id == id
                               select c).Single();
            return chamado;
        }
    }
}
