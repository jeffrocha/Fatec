<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - SISTEMA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR SISTEMA</h1>
       <form name="consultarSistema" action="validaConsultarSistema.jsp" method="post">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
             <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
       </div>
    </body>
</html>
