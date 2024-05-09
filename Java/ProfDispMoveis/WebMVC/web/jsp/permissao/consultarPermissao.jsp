<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PERMISSAO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PERMISSAO</h1>
       <form name="consultarPermissao" action="validaConsultarPermissao.jsp" method="post">
           permissao <input type="text" name ="PERMISSAO" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
