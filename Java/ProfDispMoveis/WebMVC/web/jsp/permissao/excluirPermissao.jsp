<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Permissao per = new Permissao(id);
    ControllerPermissao usuCont = new ControllerPermissao();
    usuCont.excluir(per);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPermissao.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>