package crudProjeto;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;
import model.Origem;

@WebServlet("/inserirCampo")
public class inserirCampo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		Integer id_projeto = Integer.parseInt(request.getParameter("inputProjeto"));	
		Integer linha_campo = Integer.parseInt(request.getParameter("inputLinha"));	
		Integer coluna_campo = Integer.parseInt(request.getParameter("inputColuna"));	
		String nome_campo = request.getParameter("idTxtEditarCelula");	
		
		PrintWriter out = response.getWriter();
		
		if (linha_campo == 0) 
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
			int amostra = Integer.parseInt(request.getParameter("idTxtEditarCelula"));			
	        try{
	            String sqlAmostraNoProjeto = 
	            "INSERT INTO amostra_projeto_contem (id_amostra, id_projeto, linha_amostra)"
	            + " VALUES (?, ?, ?)";

	            Connection con = Conexao.Conectar();
	            PreparedStatement stInserirAmostraNoProjeto = con.prepareStatement(sqlAmostraNoProjeto);
	            stInserirAmostraNoProjeto.setInt(1, amostra);
	            stInserirAmostraNoProjeto.setInt(2, id_projeto);
	            stInserirAmostraNoProjeto.setInt(3, linha_campo);
	            stInserirAmostraNoProjeto.executeUpdate();
	            
	        } catch (SQLException ex) {
	            out.print("Erro na conexão: " + ex);
	        } 			
		}
		
		if (coluna_campo != 1 && linha_campo != 0) 
		{
			//informação
	        try{
	        	
	        	Integer id_amostra_projeto = null;
	        	Integer id_campo = null;
	        	
	            String sqlExibirAmostra = "SELECT id_amostra_projeto FROM amostra_projeto_contem WHERE linha_amostra= " + linha_campo;	            
	            Connection con = Conexao.Conectar();
	            Statement stExibirAmostra = con.createStatement();
	            ResultSet rsExibirAmostra = stExibirAmostra.executeQuery(sqlExibirAmostra);
	            
	            if ( rsExibirAmostra.next() ) {
	            	
	            	id_amostra_projeto = rsExibirAmostra.getInt("id_amostra_projeto");
	                                           
	            }
	            rsExibirAmostra.close();

	            String sqlExibirCampo = "SELECT id_campo FROM campo WHERE coluna_campo= " + coluna_campo;	            
	            Statement stExibirCamop = con.createStatement();
	            ResultSet rsExibirCampo = stExibirCamop.executeQuery(sqlExibirCampo);
	            
	            if ( rsExibirCampo.next() ) {
	            	
	            	id_campo = rsExibirCampo.getInt("id_campo");
	                                           
	            }
	            rsExibirCampo.close();

	        	try {
	            String sqlInformacao = 
	            "INSERT INTO informacao (conteudo_informacao, id_amostra_projeto, id_campo, id_projeto)"
	            + " VALUES (?, ?, ?, ?)";

	            PreparedStatement stInserirInformacao = con.prepareStatement(sqlInformacao);
	            stInserirInformacao.setString(1, nome_campo);
	            stInserirInformacao.setInt(2, id_amostra_projeto);
	            stInserirInformacao.setInt(3, id_campo);
	            stInserirInformacao.setInt(4, id_projeto);
	            stInserirInformacao.executeUpdate();
	        	}
	        	catch (SQLException ex) {
		            out.print("AAAAAAAA: " + ex);
		        } 
	            
	        } catch (SQLException ex) {
	            out.print("Erro na conexão: " + ex);
	        } 
			
		}
        response.sendRedirect("./jsp/jspLogado/projeto.jsp?id_projeto=" +id_projeto);
	}

}
