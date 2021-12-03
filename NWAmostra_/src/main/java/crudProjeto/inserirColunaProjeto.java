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

@WebServlet("/inserirColunaProjeto")
public class inserirColunaProjeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	Integer id_projeto = Integer.parseInt(request.getParameter("id_projeto"));		
		
        try {
            String sqlPegarColunas = "SELECT colunas_projeto FROM projeto WHERE id_projeto= " +id_projeto;
            
            Connection con = Conexao.Conectar();
                Statement stPegarColunas = con.createStatement();
                ResultSet rsPegarColunas = stPegarColunas.executeQuery(sqlPegarColunas);
                if ( rsPegarColunas.next() ) 
                {
            		PrintWriter out = response.getWriter();
            		
            		Integer colunas_projeto = rsPegarColunas.getInt("colunas_projeto");
            		colunas_projeto++;
            		
                    try
                    {
                    	
                	String sqlAdicionarColunas = "UPDATE projeto SET colunas_projeto = (?)"
                    + " WHERE id_projeto=" + id_projeto;
                	
                    PreparedStatement stAdicionarColunas = con.prepareStatement(sqlAdicionarColunas);
                    
                    stAdicionarColunas.setInt(1, colunas_projeto);
                    stAdicionarColunas.executeUpdate();
                    
                    }catch (SQLException ex) 
                    {
                        out.print("Erro ao adicionar linha: " + ex);
                    } 
                	
                    response.sendRedirect("./jsp/jspLogado/projeto.jsp?id_projeto=" + id_projeto);
                    
                }         
            
                rsPegarColunas.close();
                con.close();
        	} 
        catch (Exception e) 
        {
            System.out.println("ADICIONAR LINHAS::ERRO");
            System.out.println(e.getMessage());
        }
    	    	
	}

}
