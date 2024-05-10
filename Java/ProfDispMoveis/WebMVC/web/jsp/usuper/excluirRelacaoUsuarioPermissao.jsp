<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.UsuarioPermissao"%>
<%@page import="dm20241m.controller.ControllerUsuarioPermissao"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    UsuarioPermissao ususis = new UsuarioPermissao(id);
    ControllerUsuarioPermissao ususisCont = new ControllerUsuarioPermissao();
    ususisCont.excluir(ususis);
    String pbusca = request.getParameter("PBUSCA");
    String url = "validaConsultarRelacaoUsuarioPermissao.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>

