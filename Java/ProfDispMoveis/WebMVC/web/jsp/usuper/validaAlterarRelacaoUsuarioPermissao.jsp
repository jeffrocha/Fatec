<%@page contentType="text/html" pageEncoding="UTF-8"%>
%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Sistema"%>
<%@page import="dm20241m.controller.ControllerSistema"%>
<%@page import="dm20241m.model.bean.UsuarioSistema"%>
<%@page import="dm20241m.controller.ControllerUsuarioSistema"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idU = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idS = Integer.parseInt(request.getParameter("ID_SISTEMA"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    UsuarioSistema ussis = new UsuarioSistema(id,idU, idS, obs);
    ControllerUsuarioSistema ususiscont = new ControllerUsuarioSistema();
    ususiscont.alterar(ussis);
    String url = "validaConsultarRelacaoUsuarioSistema.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    