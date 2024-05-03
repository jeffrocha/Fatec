<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>
<%@page import="dm20241m.model.bean.UsuarioSistema"%>
<%@page import="dm20241m.controller.ControllerUsuarioSistema"%>

<%
    ControllerSistema sisCont = new ControllerSistema();
    Sistema pf = new Sistema("");
    List<Sistema> listaSistema = sisCont.listar(pf);

    ControllerUsuario usuCont = new ControllerUsuario();
    Usuario usuEnt = new Usuario("");
    List<Usuario> listaUsuario = usuCont.listar(usuEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR USUARIO SISTEMA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Usuario Sistema</h1>
            <form name="inseriUsuarioSistema" action="validaRelacaoUsuarioSistema.jsp" method="POST">
                <table>
                    <tr>
                        <td>Sistema:</td>
                        <td>
                            <select NAME ="ID_SISTEMA" class="browser-default">
                               <% for (Sistema sisSaida : listaSistema) { %>
                                    <option value="<%=sisSaida.getId()%>"><%=sisSaida.getNome()%></option>
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
