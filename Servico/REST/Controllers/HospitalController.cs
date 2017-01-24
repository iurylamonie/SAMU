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

    }
}
