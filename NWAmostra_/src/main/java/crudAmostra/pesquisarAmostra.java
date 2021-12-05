package crudAmostra;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pesquisarAmostra")
public class pesquisarAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer id_amostra = Integer.parseInt(request.getParameter("inputBuscarAmostras"));	
    	
        response.sendRedirect("./jsp/jspLogado/amostra.jsp?id_amostra_mapa=" +id_amostra);
		
	}

}
