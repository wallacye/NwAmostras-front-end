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
import java.sql.Statement;

import conexao.Conexao;

@WebServlet("/desativarAmostra")
public class desativarAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		try{
            int id_amostra = Integer.parseInt(request.getParameter("id_amostra"));
            java.sql.Date data_inativacao_amostra = new java.sql.Date(System.currentTimeMillis());
            
            
            String sqlDesativarAmostra = "UPDATE amostra_no_mapa_contem SET data_inativacao_amostra = (?)"
            + " WHERE id_amostra=" + id_amostra;
            
            Connection con = Conexao.Conectar();
            PreparedStatement stDesativarAmostra = con.prepareStatement(sqlDesativarAmostra);
            
            stDesativarAmostra.setDate(1, data_inativacao_amostra);
            stDesativarAmostra.executeUpdate();
            
            response.sendRedirect("./jsp/jspLogado/telaInicialAmostra.jsp");
        }
        catch(SQLException e){
            out.print("Erro ao desativar os dados no banco:" + e);
        }
	}

}
