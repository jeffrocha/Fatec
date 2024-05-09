<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PERMISSAO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PERMISSAO</h1>
        <form name="inserirPermissao" action="validaInserirPermissao.jsp" method="post">
            Permissao: <input type="text" name="PERMISSAO" value=""> <br>
            Descritivo: <input type="text" name="DESCRITIVO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>

