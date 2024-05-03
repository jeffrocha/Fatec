<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Sistema sis = new Sistema(id);
    ControllerSistema usuCont = new ControllerSistema();
    usuCont.excluir(sis);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarSistema.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>