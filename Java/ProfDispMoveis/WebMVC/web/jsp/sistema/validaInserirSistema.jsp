<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>

<%
    String nome = request.getParameter("NOME");
    String servidor = request.getParameter("SERVIDOR");
    String status = request.getParameter("STATUS");
    String versao = request.getParameter("VERSAO");
    Sistema sis = new Sistema(nome, servidor, status, versao);
    ControllerSistema siscont = new ControllerSistema();
    siscont.inserir(sis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirSistema.jsp";
    response.sendRedirect(url);
%>

