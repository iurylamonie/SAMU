using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidade
{
    public class Chamado
    {
        private int id, ocorrencia_id, veiculoAtendimento_id, hospital_id;
        private string trajetoOcorrencia, trajetoHospita;
        private DateTime data;

        public int Hospital_id
        {
            get
            {
                return hospital_id;
            }

            set
            {
                hospital_id = value;
            }
        }

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

        public int Ocorrencia_id
        {
            get
            {
                return ocorrencia_id;
            }

            set
            {
                ocorrencia_id = value;
            }
        }

        public string TrajetoHospita
        {
            get
            {
                return trajetoHospita;
            }

            set
            {
                trajetoHospita = value;
            }
        }

        public string TrajetoOcorrencia
        {
            get
            {
                return trajetoOcorrencia;
            }

            set
            {
                trajetoOcorrencia = value;
            }
        }


        public int VeiculoAtendimento_id
        {
            get
            {
                return veiculoAtendimento_id;
            }

            set
            {
                veiculoAtendimento_id = value;
            }
        }

        public DateTime Data
        {
            get
            {
                return data;
            }

            set
            {
                data = value;
            }
        }
    }
}
