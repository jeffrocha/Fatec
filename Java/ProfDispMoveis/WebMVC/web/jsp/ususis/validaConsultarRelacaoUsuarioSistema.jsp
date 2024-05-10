<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>
<%@page import="dm20241m.model.bean.UsuarioSistema"%>
<%@page import="dm20241m.controller.ControllerUsuarioSistema"%>

<%
    String obs = request.getParameter("OBS");
    UsuarioSistema ususis = new UsuarioSistema(obs);
    ControllerUsuarioSistema usupescont = new ControllerUsuarioSistema();
    List<UsuarioSistema> listaususist = usupescont.listar(ususis);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + ususis.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdUsuSist">Id</th>
                  <th data-field="IdU">IdUsuario</th>
                  <th data-field="Login">Login</th>
                  <th data-field="IdS">IdSistema</th>
                  <th data-field="NomeSistema">Sistema</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaususist.isEmpty())) { %>    
                <tbody>
                    <% for (UsuarioSistema usuSistSaida : listaususist) { 
                        %>
                        <tr>
                            <td><%=usuSistSaida.getId()%></td>
                            <td><%=usuSistSaida.getIdU()%></td>
                            <td><%=usuSistSaida.getUsu().getLogin()%></td>
                            <td><%=usuSistSaida.getIdS()%></td>
                            <td><%=usuSistSaida.getSis().getNome()%></td>
                            <td><%=usuSistSaida.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoUsuarioSistema.jsp?<%=url + usuSistSaida.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoUsuarioSistema.jsp?<%=url + usuSistSaida.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
    <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
</html>