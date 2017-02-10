using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidade
{
    public class Usuario
    {
        private int id;
        private int tipo;
        private string nome;
        private string senha;
        private string cpf;

        public Ocorrencia Ocorrencia { get; set; }
        public VeiculoAtendimento VeiculoAtendimento { get; set; }
        //Propriedades
        //public int Id { get { return id;  } set { this.id = value; } }
        public int Tipo { get { return tipo; } set { this.tipo = value; } }
        public string Nome { get { return nome; } set { this.nome = value; } }
        public string Senha { get { return senha; } set { this.senha = value; } }
        public string Cpf { get { return cpf; } set { this.cpf = value; } }

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
    }
}
