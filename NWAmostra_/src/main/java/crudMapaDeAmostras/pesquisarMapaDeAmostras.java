package crudMapaDeAmostras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pesquisarMapaDeAmostras")
public class pesquisarMapaDeAmostras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Integer id_mapa_amostra = Integer.parseInt(request.getParameter("inputBuscarMapaAmostras"));	
    	
        response.sendRedirect("./jsp/jspLogado/mapaAmostras.jsp?id_mapa_amostra=" +id_mapa_amostra);
	
	}

}
