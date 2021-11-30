package crudMapaDeAmostras;

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

@WebServlet("/alterarMapaDeAmostras")
public class alterarMapaDeAmostras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
        try{
        Integer id_mapa_amostra = Integer.parseInt(request.getParameter("idMapaAmostrasAlterar"));
		String nome_mapa_amostra = request.getParameter("txtNomeAlterarMapaDeAmostras");
		String estante_mapa_amostra = request.getParameter("txtEstanteAlterarMapaDeAmostras");								
    	String freezer_mapa_amostra = request.getParameter("txtFreezerAlterarMapaDeAmostras");
    	String caixa_mapa_amostra = request.getParameter("txtCaixaAlterarMapaDeAmostras");
    	Integer n_coluna_mapa_amostra = Integer.parseInt(request.getParameter("txtColunasAlterarMapaDeAmostras"));
    	Integer n_linha_mapa_amostra = Integer.parseInt(request.getParameter("txtLinhasAlterarMapaDeAmostras"));
    	
    	String sqlAlterarMapaDeAmostra = "UPDATE mapa_de_amostras SET nome_mapa_amostra = (?), estante_mapa_amostra = (?),"
    	+ " freezer_mapa_amostra = (?), caixa_mapa_amostra = (?), n_coluna_mapa_amostra = (?), n_linha_mapa_amostra = (?)"
        + " WHERE id_mapa_amostra=" + id_mapa_amostra;
    	
    	Connection con = Conexao.Conectar();
        PreparedStatement stAlterarMapaDeAmostra = con.prepareStatement(sqlAlterarMapaDeAmostra);
        
        stAlterarMapaDeAmostra.setString(1, nome_mapa_amostra);
        stAlterarMapaDeAmostra.setString(2, estante_mapa_amostra);
        stAlterarMapaDeAmostra.setString(3, freezer_mapa_amostra);
        stAlterarMapaDeAmostra.setString(4, caixa_mapa_amostra);
        stAlterarMapaDeAmostra.setInt(5, n_coluna_mapa_amostra);
        stAlterarMapaDeAmostra.setInt(6, n_linha_mapa_amostra);
        stAlterarMapaDeAmostra.executeUpdate();
    	
        response.sendRedirect("./jsp/jspLogado/mapaAmostras.jsp?id_mapa_amostra=" + id_mapa_amostra);
        
        }catch (SQLException ex) {
            out.print("Erro na conexão: " + ex);
        } 
	}

}
