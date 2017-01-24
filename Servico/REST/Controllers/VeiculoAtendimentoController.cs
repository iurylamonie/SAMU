using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace REST.Controllers
{
    [RoutePrefix("api/VeiculoAtendimento")]
    public class VeiculoAtendimentoController : ApiController
    {
        [AcceptVerbs("GET")]
        [Route("ListarSB")]
        public List<Models.VeiculoAtendimento> ListarSB()
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var suporteBasico = from va in sdc.VeiculoAtendimentos
                               // where va.Ambulancia.tipo == "Suporte Básico"
                                select va;
            return suporteBasico.ToList();
                           
        }
    }
}
