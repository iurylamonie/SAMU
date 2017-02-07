using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace REST.Controllers
{
    [RoutePrefix("api/Hospital")]
    public class HospitalController : ApiController
    {
        [AcceptVerbs("GET")]
        [Route("Listar")]
        public List<Models.Hospital> Listar()
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = from h in sdc.Hospitals select h;
            return r.ToList();
        }

        [AcceptVerbs("POST")]
        [Route("Criar")]
        public void Criar([FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Hospital hospital = JsonConvert.DeserializeObject<Models.Hospital>(conteudo);
            sdc.Hospitals.InsertOnSubmit(hospital);
            sdc.SubmitChanges();
        }

        [AcceptVerbs("DELETE")]
        [Route("Deletar/{registro}")]
        public void Deletar(int id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from h in sdc.Hospitals
                     where h.id == id
                     select h).Single();
            sdc.Hospitals.DeleteOnSubmit(r);
            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("Alterar/{id}")]
        public void Alterar(int id, [FromBody] string conteudo)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Hospital hospital = JsonConvert.DeserializeObject<Models.Hospital>(conteudo);
            var r = (from h in sdc.Hospitals
                     where h.id == id
                     select h).Single();

            r.nome = hospital.nome;
            r.tipo = hospital.tipo;
            r.endereco = hospital.endereco;

            sdc.SubmitChanges();
        }

    }
}
