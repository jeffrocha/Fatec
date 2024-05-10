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
    
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);

    UsuarioPermissao ussis = new UsuarioPermissao(id);
    ControllerUsuarioPermissao ususiscont = new ControllerUsuarioPermissao();
    ussis = ususiscont.buscar(ussis);
    
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - USUÁRIO Permissao</h1>
        <form name="alterarUsuarioPermissao" action="validaAlterarRelacaoUsuarioPermissao.jsp" method="post">
            <table>
                    <tr>
                        <td>Permissao:</td>
                        <td>
                            <select NAME ="ID_Permissao" class="browser-default">
                               <% for (Permissao sisSaida : listaPermissao) { %>
                                   <% if( ussis.getIdP()== sisSaida.getId()) { %>
                                        <option selected value="<%=sisSaida.getId()%>"><%=sisSaida.getPermissao()%></option>
                                   <% } else { %>
                                        <option value="<%=sisSaida.getId()%>"><%=sisSaida.getPermissao()%></option>
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
        <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
        <div>
    </body>
</html>