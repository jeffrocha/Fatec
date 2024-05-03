<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.UsuarioSistema"%>
<%@page import="dm20241m.controller.ControllerUsuarioSistema"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    UsuarioSistema ususis = new UsuarioSistema(id);
    ControllerUsuarioSistema ususisCont = new ControllerUsuarioSistema();
    ususisCont.excluir(ususis);
    String pbusca = request.getParameter("PBUSCA");
    String url = "validaConsultarRelacaoUsuarioSistema.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>

