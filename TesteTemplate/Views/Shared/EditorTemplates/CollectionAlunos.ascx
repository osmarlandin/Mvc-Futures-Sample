<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<table>
    <thead>
<%
    if (Model != null)
    {
%>
            <tr>
                <th>Nome</th>
                <th>Endereço</th>
            </tr>
    </thead>
    <tbody>
<%
        string oldPrefix = ViewData.TemplateInfo.HtmlFieldPrefix;
        int index = 0;

        ViewData.TemplateInfo.HtmlFieldPrefix = String.Empty;
        
        foreach (Object item in (IEnumerable)Model) {
            string fieldName = String.Format(System.Globalization.CultureInfo.InvariantCulture, "{0}[{1}]", oldPrefix, index++);
            ViewContext.Writer.Write(Html.EditorFor(m => item, null, fieldName));
        }
        
        ViewData.TemplateInfo.HtmlFieldPrefix = oldPrefix;
    }
%>
    </tbody>
</table>