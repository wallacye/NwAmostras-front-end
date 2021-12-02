package crudAmostra;

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

@WebServlet("/faseColetaAmostra")
public class faseColetaAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		try{
            int id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));
            String fase_coleta = request.getParameter("fase_coleta");
            
            if(fase_coleta.equals("") || fase_coleta.equals("Nao")){
            	
            	String sqlMudarFaseColetaAmostra = "UPDATE amostra_no_mapa_contem SET fase_coleta = (?)"
                + " WHERE id_amostra_mapa=" + id_amostra_mapa;
                        
                Connection con = Conexao.Conectar();
                PreparedStatement stMudarFaseColetaAmostra = con.prepareStatement(sqlMudarFaseColetaAmostra);
            	
            	stMudarFaseColetaAmostra.setString(1, "Sim");
            	
            	stMudarFaseColetaAmostra.executeUpdate();
            } else if(fase_coleta.equals("Sim")) {
            	
            	String sqlMudarFaseColetaAmostra = "UPDATE amostra_no_mapa_contem SET fase_coleta = (?)"
                + " WHERE id_amostra_mapa=" + id_amostra_mapa;
                        
                Connection con = Conexao.Conectar();
                PreparedStatement stMudarFaseColetaAmostra = con.prepareStatement(sqlMudarFaseColetaAmostra);
            	stMudarFaseColetaAmostra.setString(1, "Nao");
            	
            	stMudarFaseColetaAmostra.executeUpdate();
            }
            
            response.sendRedirect("./jsp/jspLogado/amostra.jsp?id_amostra_mapa=" + id_amostra_mapa);
        }
        catch(SQLException e){
            out.print("Erro ao mudar a fase de coleta no banco:" + e);
        }
		
	}
}
