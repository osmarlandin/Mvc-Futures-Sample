<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TesteTemplate.Models.Aluno>" %>
<tr>
    <td>
        <%
        ViewContext.Writer.Write(Html.EditorFor(m => m.Nome));
        %>
    </td>
    <td>
        <%
        ViewContext.Writer.Write(Html.EditorFor(m => m.Endereco));
        %>
    </td>
</tr>