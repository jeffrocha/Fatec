
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>

<%
    String nome = request.getParameter("NOME");
    Sistema sis = new Sistema(nome);
    ControllerSistema siscont = new ControllerSistema();
    List<Sistema> listaSistema = siscont.listar(sis);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + sis.getNome()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA SISTEMAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Servidor">Servidor</th>
                  <th data-field="Status">Status</th>
                  <th data-field="Versao">Versao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaSistema.isEmpty())) { %>    
                <tbody>
                    <% for (Sistema sisSaida : listaSistema) { %>
                    <tr>
                            <td><%=sisSaida.getId()%></td>
                            <td><%=sisSaida.getNome()%></td>
                            <td><%=sisSaida.getServidor()%></td>
                            <td><%=sisSaida.getStatus()%></td>
                            <td><%=sisSaida.getVersao()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirSistema.jsp?<%=url + sisSaida.getId()%>">Excluir</a></td>
                                <td><a href="alterarSistema.jsp?<%=url + sisSaida.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
          <a href="../contacess/menu.jsp"> <input type="BUTTON" name="Voltar" value="Voltar"> </a>
</html>