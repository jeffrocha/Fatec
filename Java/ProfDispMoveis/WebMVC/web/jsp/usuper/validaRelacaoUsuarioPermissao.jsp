<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.model.bean.UsuarioPermissao"%>
<%@page import="dm20241m.controller.ControllerUsuarioPermissao"%>
<%
    int idU = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idP = Integer.parseInt(request.getParameter("ID_Permissao"));
    String obs = request.getParameter("OBS");
    UsuarioPermissao ussis = new UsuarioPermissao(idU, idP, obs);
    ControllerUsuarioPermissao ususiscont = new ControllerUsuarioPermissao();
    ususiscont.inserir(ussis);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoUsuarioPermissao.jsp";
    response.sendRedirect(url);

%>