<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String servidor = request.getParameter("SERVIDOR");
    String status = request.getParameter("STATUS");
    String versao = request.getParameter("VERSAO");
    Sistema sis = new Sistema(id,nome, servidor, status, versao);
    ControllerSistema siscont = new ControllerSistema();
    siscont.alterar(sis);
    String pbusca = request.getParameter("PBUSCA");
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarSistema.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>