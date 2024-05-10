<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - USUÁRIO - SISTEMA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR USUÁRIO - SISTEMA</h1>
       <form name="consultarUsuarioSistema" action="validaConsultarRelacaoUsuarioSistema.jsp" method="post">
           Observação: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
       </div>
    </body>
</html>
