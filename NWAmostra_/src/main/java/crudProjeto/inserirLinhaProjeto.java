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

@WebServlet("/inserirLinhaProjeto")
public class inserirLinhaProjeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	Integer id_projeto = Integer.parseInt(request.getParameter("id_projeto"));		
		
        try {
            String sqlPegarLinhas = "SELECT linhas_projeto FROM projeto WHERE id_projeto= " +id_projeto;
            
            Connection con = Conexao.Conectar();
                Statement stPegarLinhas = con.createStatement();
                ResultSet rsPegarLinhas = stPegarLinhas.executeQuery(sqlPegarLinhas);
                if ( rsPegarLinhas.next() ) 
                {
            		PrintWriter out = response.getWriter();
            		
            		Integer linhas_projeto = rsPegarLinhas.getInt("linhas_projeto");
            		linhas_projeto++;
            		
                    try
                    {
                    	
                	String sqlAdicionarLinhas = "UPDATE projeto SET linhas_projeto = (?)"
                    + " WHERE id_projeto=" + id_projeto;
                	
                    PreparedStatement stAdicionarLinhas = con.prepareStatement(sqlAdicionarLinhas);
                    
                    stAdicionarLinhas.setInt(1, linhas_projeto);
                    stAdicionarLinhas.executeUpdate();
                    
                    }catch (SQLException ex) 
                    {
                        out.print("Erro ao adicionar linha: " + ex);
                    } 
                	
                    response.sendRedirect("./jsp/jspLogado/projeto.jsp?id_projeto=" + id_projeto);
                    
                }         
            
                rsPegarLinhas.close();
                con.close();
        	} 
        catch (Exception e) 
        {
            System.out.println("ADICIONAR LINHAS::ERRO");
            System.out.println(e.getMessage());
        }
    	    	
	}

}
