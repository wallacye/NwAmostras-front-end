package crudMapaDeAmostras;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

@WebServlet("/desativarMapaDeAmostra")
public class desativarMapaDeAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		try{
            int id_mapa_amostra = Integer.parseInt(request.getParameter("id_mapa_amostra"));
            java.sql.Date data_inativacao_mapa_amostra = new java.sql.Date(System.currentTimeMillis());
            
            
            String sqlDesativarMapaDeAmostra = "UPDATE mapa_de_amostras SET data_inativacao_mapa_amostra = (?)"
            + " WHERE id_mapa_amostra=" + id_mapa_amostra;
            
            Connection con = Conexao.Conectar();
            PreparedStatement stDesativarMapaDeAmostra = con.prepareStatement(sqlDesativarMapaDeAmostra);
            
            stDesativarMapaDeAmostra.setDate(1, data_inativacao_mapa_amostra);
            stDesativarMapaDeAmostra.executeUpdate();
            
            response.sendRedirect("./jsp/jspLogado/telaInicialMapaAmostras.jsp");
        }
        catch(SQLException e){
            out.print("Erro ao desativar os dados no banco:" + e);
        }
	}

}
