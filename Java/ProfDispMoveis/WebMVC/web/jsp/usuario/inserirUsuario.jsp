<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - USUÁRIO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR USUÁRIO</h1>
        <form name="inserirUsuario" action="validaInserirUsuario.jsp" method="post">
            Login: <input type="text" name="LOGIN" value=""> <br>
            Senha: <input type="password" name="SENHA" value=""> <br>
            Status: <input type="text" name="STATUS" value=""> <br>
            Tipo: <input type="text" name="TIPO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
        </div>
    </body>
</html>
