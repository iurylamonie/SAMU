using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Central.Atendente.GerenciadorOcorrencia
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewOcorrencias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                string codigoOcorrencia;
                int index = Convert.ToInt32(e.CommandArgument);
                codigoOcorrencia = GridViewOcorrencias.Rows[index].Cells[0].Text;
                Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(codigoOcorrencia));
                Session["idOcorrencia"] = ocorrencia.Id;
                Session["tipoOcorrencia"] = ocorrencia.Tipo;
                Session["nomeSolicitanteOcorrencia"] = ocorrencia.NomeSolicitante;
                Session["nomeVitimaOcorrencia"] = ocorrencia.NomeVitima;
                Session["quantidadeVitimasOcorrencia"] = ocorrencia.QuantidadeVitimas;
                Session["cepOcorrencia"] = ocorrencia.Cep;
                Session["enderecoOcorrencia"] = ocorrencia.Endereco;
                Session["infAdicionalOcorrencia"] = ocorrencia.InformacaoAdicional;
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/DetalharOcorrencia.aspx");
            }
            else if (e.CommandName == "Excluir")
            {
                string codigoOcorrencia;
                int index = Convert.ToInt32(e.CommandArgument);
                codigoOcorrencia = GridViewOcorrencias.Rows[index].Cells[0].Text;
                Funcionalidade.Ocorrencia.DeletarOcorrencia(int.Parse(codigoOcorrencia));
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/Principal.aspx");
            }

        }

        protected void GridViewOcorrenciaSemChamado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                string codigoOcorrencia;
                int index = Convert.ToInt32(e.CommandArgument);
                codigoOcorrencia = GridViewOcorrenciaSemChamado.Rows[index].Cells[0].Text;
                Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(codigoOcorrencia));
                Session["idOcorrencia"] = ocorrencia.Id;
                Session["tipoOcorrencia"] = ocorrencia.Tipo;
                Session["nomeSolicitanteOcorrencia"] = ocorrencia.NomeSolicitante;
                Session["nomeVitimaOcorrencia"] = ocorrencia.NomeVitima;
                Session["quantidadeVitimasOcorrencia"] = ocorrencia.QuantidadeVitimas;
                Session["cepOcorrencia"] = ocorrencia.Cep;
                Session["enderecoOcorrencia"] = ocorrencia.Endereco;
                Session["infAdicionalOcorrencia"] = ocorrencia.InformacaoAdicional;
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/DetalharOcorrencia.aspx");
            }
            else if (e.CommandName == "Excluir")
            {
                string codigoOcorrencia;
                int index = Convert.ToInt32(e.CommandArgument);
                codigoOcorrencia = GridViewOcorrenciaSemChamado.Rows[index].Cells[0].Text;
                Funcionalidade.Ocorrencia.DeletarOcorrencia(int.Parse(codigoOcorrencia));
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/Principal.aspx");
            }
        }

        protected void GridViewOcorrenciasFinalizadas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhar")
            {
                string codigoOcorrencia;
                int index = Convert.ToInt32(e.CommandArgument);
                codigoOcorrencia = GridViewOcorrenciasFinalizadas.Rows[index].Cells[0].Text;
                Entidade.Ocorrencia ocorrencia = Funcionalidade.Ocorrencia.Consultar(int.Parse(codigoOcorrencia));
                Session["idOcorrencia"] = ocorrencia.Id;
                Session["tipoOcorrencia"] = ocorrencia.Tipo;
                Session["nomeSolicitanteOcorrencia"] = ocorrencia.NomeSolicitante;
                Session["nomeVitimaOcorrencia"] = ocorrencia.NomeVitima;
                Session["quantidadeVitimasOcorrencia"] = ocorrencia.QuantidadeVitimas;
                Session["cepOcorrencia"] = ocorrencia.Cep;
                Session["enderecoOcorrencia"] = ocorrencia.Endereco;
                Session["infAdicionalOcorrencia"] = ocorrencia.InformacaoAdicional;
                Response.Redirect("~/Atendente/GerenciadorOcorrencia/DetalharOcorrencia.aspx");
            }
            
        }
    }
    //Classe criada apenas para ver como iria ficar a tabela
    public class Ocorrencia
    {
        public int Id { get; set;  }
        public string Tipo { get; set; }
        public string NomeSolicitante { get; set; }
        public string NomeVitima { get; set; }
        public int QuantidadeVitimas { get; set; }
        public string CEP { get; set; }
        public string NumeroResidencia { get; set; }
        public string InformacaoAdicional { get; set; }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Ocorrencia> Listar()
        {
            List<Ocorrencia> ocorrencias = new List<Ocorrencia>();
            ocorrencias.Add(new Ocorrencia { Id = 1, Tipo = "Tipo 1", NomeSolicitante = "Solicitante 1", NomeVitima = "Vitima 1", QuantidadeVitimas = 1, CEP = "CEP 1", NumeroResidencia = "numero 1", InformacaoAdicional = "Loiro" });
            ocorrencias.Add(new Ocorrencia { Id = 2, Tipo = "Tipo 1", NomeSolicitante = "Solicitante 1", NomeVitima = "Vitima 1", QuantidadeVitimas = 1, CEP = "CEP 1", NumeroResidencia = "numero 1", InformacaoAdicional = "Loiro" });
            ocorrencias.Add(new Ocorrencia { Id = 3, Tipo = "Tipo 1", NomeSolicitante = "Solicitante 1", NomeVitima = "Vitima 1", QuantidadeVitimas = 1, CEP = "CEP 1", NumeroResidencia = "numero 1", InformacaoAdicional = "Loiro" });
            return ocorrencias;
        }
    }
}