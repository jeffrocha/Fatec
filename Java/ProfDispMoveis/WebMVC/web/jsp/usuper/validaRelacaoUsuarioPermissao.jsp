<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.model.bean.UsuarioSistema"%>
<%@page import="dm20241m.controller.ControllerUsuarioSistema"%>
<%
    int idU = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idS = Integer.parseInt(request.getParameter("ID_SISTEMA"));
    String obs = request.getParameter("OBS");
    UsuarioSistema ussis = new UsuarioSistema(idU, idS, obs);
    ControllerUsuarioSistema ususiscont = new ControllerUsuarioSistema();
    ususiscont.inserir(ussis);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoUsuarioSistema.jsp";
    response.sendRedirect(url);

%>