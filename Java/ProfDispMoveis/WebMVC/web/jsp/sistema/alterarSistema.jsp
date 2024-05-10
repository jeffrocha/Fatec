<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Sistema sis = new Sistema(id);
    ControllerSistema sisCont = new ControllerSistema();
    sis = sisCont.buscar(sis);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - SISTEMA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR SISTEMA</h1>
        <form name="alterarUsuario" action="validaAlterarSistema.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=sis.getNome()%>"> <br>
            Servidor: <input type="text" name="SERVIDOR" value="<%=sis.getServidor()%>"> <br>
            Status: <input type="text" name="STATUS" value="<%=sis.getStatus()%>"> <br>
            Versao: <input type="text" name="VERSAO" value="<%=sis.getVersao()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=sis.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
                  <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
        <div>
    </body>
</html>