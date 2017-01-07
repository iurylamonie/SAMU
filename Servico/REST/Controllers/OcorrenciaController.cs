using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace REST.Controllers
{
    [RoutePrefix("api/Ocorrencia")]
    public class OcorrenciaController : ApiController
    {
        [AcceptVerbs("POST")]
        [Route("Criar")]
        public void Criar([FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Ocorrencia ocorrencia = JsonConvert.DeserializeObject<Models.Ocorrencia>(conteudo);
            sdc.Ocorrencias.InsertOnSubmit(ocorrencia);
            sdc.SubmitChanges();   
        }

        [AcceptVerbs("GET")]
        [Route("Listar/{usuario_id}")]
        public List<Models.Ocorrencia> Listar(int usuario_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var ocorrencias = from o in sdc.Ocorrencias
                              where o.usuario_id == usuario_id
                              select o;
            return ocorrencias.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("ListarSemChamado/{usuario_id}")]
        public List<Models.Ocorrencia> ListarSemChamado(int usuario_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var ocorrencias = from o in sdc.Ocorrencias
                              where o.usuario_id == usuario_id && o.situacao == "Espera"
                              select o;
            return ocorrencias.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("ListarEmAtendimento/{usuario_id}")]
        public List<Models.Ocorrencia> ListarEmAtendimento(int usuario_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var ocorrencias = from o in sdc.Ocorrencias
                              where o.usuario_id == usuario_id && o.situacao == "Atendimento"
                              select o;
            return ocorrencias.ToList();
        }

    }
}
