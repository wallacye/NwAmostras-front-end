<%
    String logado = (String) request.getSession().getAttribute("logado");
    if(logado != "TRUE"){
        session.setAttribute("erro",2);
        response.sendRedirect(request.getContextPath()+"/jsp/login.jsp");
        
    }
%>