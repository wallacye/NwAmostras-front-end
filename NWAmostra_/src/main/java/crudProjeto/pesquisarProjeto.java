package crudProjeto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "pesquisarProjeto", urlPatterns = {"/pesquisarProjeto"})
public class pesquisarProjeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		Integer id_projeto = Integer.parseInt(request.getParameter("inputBuscarProjeto"));	
    	
        response.sendRedirect("./jsp/jspLogado/projeto.jsp?id_projeto=" +id_projeto);
	}

}
