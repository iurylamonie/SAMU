using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidade
{
    class Endereco
    {
        private string cep, logradouro, complemento, bairro, localidade, uf, unidade, ibge, gia;

        public string Bairro
        {
            get
            {
                return bairro;
            }

            set
            {
                bairro = value;
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

        public string Complemento
        {
            get
            {
                return complemento;
            }

            set
            {
                complemento = value;
            }
        }

        public string Gia
        {
            get
            {
                return gia;
            }

            set
            {
                gia = value;
            }
        }

        public string Ibge
        {
            get
            {
                return ibge;
            }

            set
            {
                ibge = value;
            }
        }

        public string Localidade
        {
            get
            {
                return localidade;
            }

            set
            {
                localidade = value;
            }
        }

        public string Logradouro
        {
            get
            {
                return logradouro;
            }

            set
            {
                logradouro = value;
            }
        }

        public string Uf
        {
            get
            {
                return uf;
            }

            set
            {
                uf = value;
            }
        }

        public string Unidade
        {
            get
            {
                return unidade;
            }

            set
            {
                unidade = value;
            }
        }
    }
}
