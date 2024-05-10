<%@page contentType="text/html" pageEncoding="UTF-8"%>
%@page import="dm20241m.model.bean.Usuario"%>
<%@page import="dm20241m.controller.ControllerUsuario"%>
<%@page import="dm20241m.model.bean.Permissao"%>
<%@page import="dm20241m.controller.ControllerPermissao"%>
<%@page import="dm20241m.model.bean.UsuarioPermissao"%>
<%@page import="dm20241m.controller.ControllerUsuarioPermissao"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idU = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idP = Integer.parseInt(request.getParameter("ID_Permissao"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    UsuarioPermissao ussis = new UsuarioPermissao(id,idU, idP, obs);
    ControllerUsuarioPermissao ususiscont = new ControllerUsuarioPermissao();
    ususiscont.alterar(ussis);
    String url = "validaConsultarRelacaoUsuarioPermissao.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    