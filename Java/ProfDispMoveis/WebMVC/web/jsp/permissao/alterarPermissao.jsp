<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Permissao per = new Permissao(id);
    ControllerPermissao sisCont = new ControllerPermissao();
    per = sisCont.buscar(per);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PERMISSAO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PERMISSAO</h1>
        <form name="alterarPermissao" action="validaAlterarPermissao.jsp" method="post">
            Permissao: <input type="text" name="PERMISSAO" value="<%=per.getPermissao()%>"><br>
            Descritivo: <input type="text" name="DESCRITIVO" value="<%=per.getDescritivo()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=per.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>