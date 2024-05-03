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
    
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);

    UsuarioSistema ussis = new UsuarioSistema(id);
    ControllerUsuarioSistema ususiscont = new ControllerUsuarioSistema();
    ussis = ususiscont.buscar(ussis);
    
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - USUÁRIO SISTEMA</h1>
        <form name="alterarUsuarioSistema" action="validaAlterarRelacaoUsuarioSistema.jsp" method="post">
            <table>
                    <tr>
                        <td>Sistema:</td>
                        <td>
                            <select NAME ="ID_SISTEMA" class="browser-default">
                               <% for (Sistema sisSaida : listaSistema) { %>
                                   <% if( ussis.getIdS()== sisSaida.getId()) { %>
                                        <option selected value="<%=sisSaida.getId()%>"><%=sisSaida.getNome()%></option>
                                   <% } else { %>
                                        <option value="<%=sisSaida.getId()%>"><%=sisSaida.getNome()%></option>
                                   <% } %>
                               <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                               <% for (Usuario usuSaida : listaUsuario) { %>
                                    <% if( ussis.getIdU()== usuSaida.getId()) { %>
                                        <option selected value="<%=usuSaida.getId()%>"><%=usuSaida.getLogin()%></option>
                                    <% } else { %>
                                        <option value="<%=usuSaida.getId()%>"><%=usuSaida.getLogin()%></option>
                                    <% } %>

                               <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=ussis.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=ussis.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>