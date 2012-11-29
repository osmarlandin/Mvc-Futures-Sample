using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TesteTemplate.Models
{
    public class ListaPresenca
    {
        public string NomeInstrutor { get; set; }

        private List<Aluno> _alunos = new List<Aluno>();
        public List<Aluno> Alunos 
        {
            get 
            {
                return _alunos;
            }
            set 
            {
                _alunos = value;
            }
        }
    }
}