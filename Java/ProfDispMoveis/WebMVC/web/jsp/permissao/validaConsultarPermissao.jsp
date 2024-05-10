
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>

<%
    String permissao = request.getParameter("PERMISSAO");
    Permissao per = new Permissao(permissao);
    ControllerPermissao siscont = new ControllerPermissao();
    List<Permissao> listaPermissao = siscont.listar(per);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + per.getPermissao()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PERMISSAO</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Permissao">Permissao</th>
                  <th data-field="Descritivo">Descritivo</th>

              </tr>
            </thead>
            <% if (!(listaPermissao.isEmpty())) { %>    
                <tbody>
                    <% for (Permissao sisSaida : listaPermissao) { %>
                    <tr>
                            <td><%=sisSaida.getId()%></td>
                            <td><%=sisSaida.getPermissao()%></td>
                            <td><%=sisSaida.getDescritivo()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPermissao.jsp?<%=url + sisSaida.getId()%>">Excluir</a></td>
                                <td><a href="alterarPermissao.jsp?<%=url + sisSaida.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
    <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
</html>