using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidade
{
    public class Ocorrencia
    {
        private int id, usuario_id, quantidadeVitimas;
        private string tipo, nomeSolicitante, nomeVitima, endereço, cep, informacaoAdicional, situacao;

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }
        public int Usuario_id
        {
            get
            {
                return usuario_id;
            }

            set
            {
                usuario_id = value;
            }
        }
        public int QuantidadeVitimas
        {
            get
            {
                return quantidadeVitimas;
            }

            set
            {
                quantidadeVitimas = value;
            }
        }
        public string Tipo
        {
            get
            {
                return tipo;
            }

            set
            {
                tipo = value;
            }
        }
        public string NomeSolicitante
        {
            get
            {
                return nomeSolicitante;
            }

            set
            {
                nomeSolicitante = value;
            }
        }
        public string NomeVitima
        {
            get
            {
                return nomeVitima;
            }

            set
            {
                nomeVitima = value;
            }
        }
        public string Endereço
        {
            get
            {
                return endereço;
            }

            set
            {
                endereço = value;
            }
        }
        public string Cep
        {
            get
            {
                return cep;
            }

            set
            {
                cep = value;
            }
        }
        public string InformacaoAdicional
        {
            get
            {
                return informacaoAdicional;
            }

            set
            {
                informacaoAdicional = value;
            }
        }
        public string Situacao
        {
            get
            {
                return situacao;
            }

            set
            {
                situacao = value;
            }
        }
    }
}
