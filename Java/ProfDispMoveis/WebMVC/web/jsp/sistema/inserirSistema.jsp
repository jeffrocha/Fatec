<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - SISTEMA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR SISTEMA</h1>
        <form name="inserirSistema" action="validaInserirSistema.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Servidor: <input type="text" name="SERVIDOR" value=""> <br>
            Status: <input type="text" name="STATUS" value=""> <br>
            Versao: <input type="text" name="VERSAO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
              <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
        </div>
    </body>
</html>

