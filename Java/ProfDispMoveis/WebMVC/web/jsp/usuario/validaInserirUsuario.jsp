<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");
    Usuario usu = new Usuario(login,senha,status,tipo);
    ControllerUsuario usucont = new ControllerUsuario();
    usucont.inserir(usu);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirUsuario.jsp";
    response.sendRedirect(url);
%>
