package crudAmostra;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

@WebServlet("/excluirHistoricoAmostra")
public class excluirHistoricoAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        
        try{
            Integer id_amostra = Integer.parseInt(request.getParameter("id_amostra"));
            Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));
            
            String sqlExcluirHistoricoAmostra = "DELETE FROM historico_da_amostra_utiliza WHERE id_amostra =" + id_amostra;
            
            Connection con = Conexao.Conectar();
            Statement stExcluirHistoricoAmostra = con.prepareStatement(sqlExcluirHistoricoAmostra);
            stExcluirHistoricoAmostra.execute(sqlExcluirHistoricoAmostra);
            
            response.sendRedirect("./jsp/jspLogado/historicoAmostra.jsp?id_amostra=" + id_amostra + "&id_amostra_mapa=" + id_amostra_mapa);
        }
        catch(SQLException e){
            out.print("Erro ao excluir os dados no banco:" + e);
        }
	}

}
