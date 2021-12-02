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
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	//int id_projeto = request.getParameter(id_projeto);
		
        try {
            String sqlTema_pesq = "SELECT tema_claro_escuro FROM pesquisador WHERE id_pesq= " +id_pesq;
            
            Connection con = Conexao.Conectar();
                Statement stTema_pesq = con.createStatement();
                ResultSet rsTema_pesq = stTema_pesq.executeQuery(sqlTema_pesq);
                if ( rsTema_pesq.next() ) 
                {
            		PrintWriter out = response.getWriter();
            		
                    try
                    {
                    	
                	String sqlAlterarPesquisador = "UPDATE pesquisador SET tema_claro_escuro = (?)"
                    + " WHERE id_pesq=" + id_pesq;
                	
                    PreparedStatement stAlterarPesquisador = con.prepareStatement(sqlAlterarPesquisador);
                    
                    stAlterarPesquisador.setInt(1, tema_claro_escuro);
                    stAlterarPesquisador.executeUpdate();
                    
                    }catch (SQLException ex) 
                    {
                        out.print("Erro ao alterar modos: " + ex);
                    } 
                	
                    response.sendRedirect("./jsp/jspLogado/indexLogado.jsp");
                    
                }         
            
            	rsTema_pesq.close();
                con.close();
        	} 
        catch (Exception e) 
        {
            System.out.println("ALTERAR TEMAS::ERRO");
            System.out.println(e.getMessage());
        }
    	    	
	}

}
