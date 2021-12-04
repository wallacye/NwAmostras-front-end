package crudProjeto;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

@WebServlet("/inserirCampo")
public class inserirCampo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		Integer id_projeto = Integer.parseInt(request.getParameter("inputProjeto"));	
		Integer linha_campo = Integer.parseInt(request.getParameter("inputLinha"));	
		Integer coluna_campo = Integer.parseInt(request.getParameter("inputColuna"));	
		String nome_campo = request.getParameter("idTxtEditarCelula");	
		
		PrintWriter out = response.getWriter();
		
		if (linha_campo == 1) 
		{
			//campo
	        try{
	            String sqlInserirCampo = 
	            "INSERT INTO campo (nome_campo, id_projeto, coluna_campo)"
	            + " VALUES (?, ?, ?)";

	            Connection con = Conexao.Conectar();
	            PreparedStatement stInserirCampo = con.prepareStatement(sqlInserirCampo);
	            stInserirCampo.setString(1, nome_campo);
	            stInserirCampo.setInt(2, id_projeto);
	            stInserirCampo.setInt(3, coluna_campo);
	            stInserirCampo.executeUpdate();
	            
	        } catch (SQLException ex) {
	            out.print("Erro na conexão: " + ex);
	        } 

			
		}
		
		if (coluna_campo == 1)
		{
			//amostra (no projeto)
			
		}
		
		if (linha_campo != 1 && coluna_campo != 1) 
		{
			//informação
			
		}
        response.sendRedirect("./jsp/jspLogado/projeto.jsp?id_projeto=" +id_projeto);
	}

}
