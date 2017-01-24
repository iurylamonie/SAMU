using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidade
{
    public class VeiculoAtendimento
    {
        private int id, ambulancia_id, usuario_id;
        private bool atendimento, disponibilidade;
        private string localizacao;

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

        public int Ambulancia_id
        {
            get
            {
                return ambulancia_id;
            }

            set
            {
                ambulancia_id = value;
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

        public bool Atendimento
        {
            get
            {
                return atendimento;
            }

            set
            {
                atendimento = value;
            }
        }

        public bool Disponibilidade
        {
            get
            {
                return disponibilidade;
            }

            set
            {
                disponibilidade = value;
            }
        }

        public string Localizacao
        {
            get
            {
                return localizacao;
            }

            set
            {
                localizacao = value;
            }
        }
    }
}
