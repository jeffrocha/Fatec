<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>

<%
    String permissao = request.getParameter("PERMISSAO");
    String descritivo = request.getParameter("DESCRITIVO");
    Permissao per = new Permissao(permissao, descritivo);
    ControllerPermissao siscont = new ControllerPermissao();
    siscont.inserir(per);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPermissao.jsp";
    response.sendRedirect(url);
%>
