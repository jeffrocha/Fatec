<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>
<%@page import="dm20241m.model.bean.UsuarioPermissao"%>
<%@page import="dm20241m.controller.ControllerUsuarioPermissao"%>

<%
    String obs = request.getParameter("OBS");
    UsuarioPermissao ususis = new UsuarioPermissao(obs);
    ControllerUsuarioPermissao usupescont = new ControllerUsuarioPermissao();
    List<UsuarioPermissao> listaususist = usupescont.listar(ususis);
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
                  <th data-field="IdS">IdPermissao</th>
                  <th data-field="NomePermissao">Permissao</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaususist.isEmpty())) { %>    
                <tbody>
                    <% for (UsuarioPermissao usuSistSaida : listaususist) { 
                        %>
                        <tr>
                            <td><%=usuSistSaida.getId()%></td>
                            <td><%=usuSistSaida.getIdU()%></td>
                            <td><%=usuSistSaida.getUsu().getLogin()%></td>
                            <td><%=usuSistSaida.getIdP()%></td>
                            <td><%=usuSistSaida.getPer().getPermissao()%></td>
                            <td><%=usuSistSaida.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoUsuarioPermissao.jsp?<%=url + usuSistSaida.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoUsuarioPermissao.jsp?<%=url + usuSistSaida.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
     <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
</html>