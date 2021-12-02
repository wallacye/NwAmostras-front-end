package crudPesquisador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;
import model.Projeto;

@WebServlet("/alterarModoEscuro")
public class alterarModoEscuro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	Integer id_pesq = Integer.parseInt(request.getParameter("inputIdPesq"));
    	Integer tema_claro_escuro = 0;
    	
        try {
            String sqlTema_pesq = "SELECT tema_claro_escuro FROM pesquisador WHERE id_pesq= " +id_pesq;
            
            Connection con = Conexao.Conectar();
                Statement stTema_pesq = con.createStatement();
                ResultSet rsTema_pesq = stTema_pesq.executeQuery(sqlTema_pesq);
                if ( rsTema_pesq.next() ) 
                {
                	tema_claro_escuro = rsTema_pesq.getInt("tema_claro_escuro");                	
                	
                	if(tema_claro_escuro == 1) 
                	{
                		tema_claro_escuro = 2;    		
                	}
                	else 
                	{
                		tema_claro_escuro = 1;
                	}
            		
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
