<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>
<%@page import="dm20241m.model.bean.UsuarioPermissao"%>
<%@page import="dm20241m.controller.ControllerUsuarioPermissao"%>

<%
    ControllerPermissao sisCont = new ControllerPermissao();
    Permissao pf = new Permissao("");
    List<Permissao> listaPermissao = sisCont.listar(pf);

    ControllerUsuario usuCont = new ControllerUsuario();
    Usuario usuEnt = new Usuario("");
    List<Usuario> listaUsuario = usuCont.listar(usuEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR USUARIO Permissao</title>
    <body>
        <div class="container"/>
            <h1>Inseri Usuario Permissao</h1>
            <form name="inseriUsuarioPermissao" action="validaRelacaoUsuarioPermissao.jsp" method="POST">
                <table>
                    <tr>
                        <td>Permissao:</td>
                        <td>
                            <select NAME ="ID_Permissao" class="browser-default">
                               <% for (Permissao sisSaida : listaPermissao) { %>
                                    <option value="<%=sisSaida.getId()%>"><%=sisSaida.getPermissao()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                               <% for (Usuario usuSaida : listaUsuario) { %>
                                    <option value="<%=usuSaida.getId()%>"><%=usuSaida.getLogin()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
