package crudMapaDeAmostras;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;

import conexao.Conexao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "inserirMapaDeAmostras", urlPatterns = {"/inserirMapaDeAmostras"})

public class inserirMapaDeAmostras extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		PrintWriter out = response.getWriter();
        try {
        	
        	String estante_mapa_amostra = request.getParameter("txtEstanteMapaDeAmostras");		
        	String nome_mapa_amostra = request.getParameter("txtNomeMapaDeAmostras");						
        	String freezer_mapa_amostra = request.getParameter("txtFreezerMapaDeAmostras");
        	String caixa_mapa_amostra = request.getParameter("txtCaixaMapaDeAmostras");
        	Integer n_coluna_mapa_amostra = Integer.parseInt(request.getParameter("txtColunasMapaDeAmostras"));
        	Integer n_linha_mapa_amostra = Integer.parseInt(request.getParameter("txtLinhasMapaDeAmostras"));
        	LocalDateTime data_inativacao_mapa_amostra = LocalDateTime.parse(request.getParameter("txtDataInativacaoAmostra"));

            String sqlInserirMapaDeAmostras = "INSERT INTO amostra (estante_mapa_amostra, nome_mapa_amostra, freezer_mapa_amostra, caixa_mapa_amostra, n_coluna_mapa_amostra, n_linha_mapa_amostra, data_inativacao_mapa_amostra)"
            + " VALUES ('" + estante_mapa_amostra  + "','" + nome_mapa_amostra + "','" + freezer_mapa_amostra + "','" + caixa_mapa_amostra + "','" + n_coluna_mapa_amostra + "','" + n_linha_mapa_amostra + "','" + data_inativacao_mapa_amostra + "')";

            Connection con = Conexao.conexao();
            Statement stInserirMapaDeAmostras = con.prepareStatement(sqlInserirMapaDeAmostras);
            stInserirMapaDeAmostras.execute(sqlInserirMapaDeAmostras);
            response.sendRedirect("/jspLogado/telaInicialMapaAmostras.jsp");

        } catch (SQLException ex) {
            out.print("Erro na conex�o: " + ex);
        } 
	}
}