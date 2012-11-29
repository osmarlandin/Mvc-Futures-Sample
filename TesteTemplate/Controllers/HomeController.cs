using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TesteTemplate.Models;

namespace TesteTemplate.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ListaPresenca lista = new ListaPresenca();
            lista.NomeInstrutor = "Victor Cavalcante";

            Aluno a1 = new Aluno();
            a1.Nome = "Osmar Landin";
            a1.Endereco = "Endereço do Osmar Landin";
            lista.Alunos.Add(a1);

            Aluno a2 = new Aluno();
            a2.Nome = "Vinicius Hana";
            a2.Endereco = "Endereço do Vinicius Hana";
            lista.Alunos.Add(a2);

            return View(lista);
        }

        [HttpPost]
        public ActionResult Index(ListaPresenca lista)
        {
            return View(lista);
        }
    }
}
