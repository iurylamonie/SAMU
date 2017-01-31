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
                              orderby o.id descending
                              select o;
            return ocorrencias.ToList();
        }

        [AcceptVerbs("GET")]
        [Route("Consultar/{id}")]
        public Models.Ocorrencia Consultar(int id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var ocorrencias = (from o in sdc.Ocorrencias
                              where o.id == id
                              select o).Single();
            return ocorrencias;
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

        [AcceptVerbs("GET")]
        [Route("ListarFinalizados/{usuario_id}")]
        public List<Models.Ocorrencia> ListarFinalizados(int usuario_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var ocorrencias = from o in sdc.Ocorrencias
                              where o.usuario_id == usuario_id && o.situacao == "Finalizado"
                              select o;
            return ocorrencias.ToList();
        }

        [AcceptVerbs("PUT")]
        [Route("Alterar/{id}")]
        public void Alterar(int id, [FromBody] string conteudo)
        {
            Models.Ocorrencia putOcorrencia = JsonConvert.DeserializeObject<Models.Ocorrencia>(conteudo);
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from o in sdc.Ocorrencias
                     where o.id == id
                     select o).Single();

            r.nomeSolicitante = putOcorrencia.nomeSolicitante;
            r.nomeVitima = putOcorrencia.nomeVitima;
            r.quantidadeVitimas = putOcorrencia.quantidadeVitimas;
            r.endereco = putOcorrencia.endereco;
            r.cep = putOcorrencia.cep;
            r.informacaoAdicional = putOcorrencia.informacaoAdicional;
            r.tipo = putOcorrencia.tipo;
            
            sdc.SubmitChanges();
        }

        [AcceptVerbs("PUT")]
        [Route("AtualizarSituacao/{id}")]
        public void AtualizarSituacao(int id, [FromBody] string conteudo)
        {
            Models.Ocorrencia putOcorrencia = JsonConvert.DeserializeObject<Models.Ocorrencia>(conteudo);
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from o in sdc.Ocorrencias
                     where o.id == id
                     select o).Single();

            r.situacao = putOcorrencia.situacao;

            sdc.SubmitChanges();
        }

        [AcceptVerbs("DELETE")]
        [Route("Deletar/{id}")]
        public void Deletar(int id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            var r = (from o in sdc.Ocorrencias
                     where o.id == id
                     select o).Single();
            sdc.Ocorrencias.DeleteOnSubmit(r);
            sdc.SubmitChanges();
        }

        [AcceptVerbs("GET")]
        [Route("ListarUltimo/{usuario_id}")]
        public Models.Ocorrencia ListarUltimo(int usuario_id)
        {
            Models.SAMUDataContext sdc = new Models.SAMUDataContext();
            Models.Ocorrencia ocorrencia = (from o in sdc.Ocorrencias
                                            where o.usuario_id == usuario_id
                                            orderby o.id descending
                                            select o).FirstOrDefault();
            return ocorrencia;
        }
    }
}
