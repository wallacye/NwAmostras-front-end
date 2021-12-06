package crudMapaDeAmostras;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

@WebServlet("/inserirMapaDeAmostra")
public class inserirMapaDeAmostras extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
        try{
        	String estante_mapa_amostra = request.getParameter("txtEstanteMapaDeAmostras");		
        	String nome_mapa_amostra = request.getParameter("txtNomeMapaDeAmostras");						
        	String freezer_mapa_amostra = request.getParameter("txtFreezerMapaDeAmostras");
        	String caixa_mapa_amostra = request.getParameter("txtCaixaMapaDeAmostras");
        	Integer n_coluna_mapa_amostra = Integer.parseInt(request.getParameter("txtColunasMapaDeAmostras"));
        	Integer id_lab = Integer.parseInt(request.getParameter("txtMapaDeAmostrasIdLab"));
        	Integer n_linha_mapa_amostra = Integer.parseInt(request.getParameter("txtLinhasMapaDeAmostras"));
        	
            java.sql.Date data_mapa_amostra = new java.sql.Date(System.currentTimeMillis());
        	//LocalDateTime data_inativacao_mapa_amostra = null;

            String sqlInserirMapaDeAmostras = 
            "INSERT INTO mapa_de_amostras (estante_mapa_amostra, nome_mapa_amostra, freezer_mapa_amostra, caixa_mapa_amostra, n_coluna_mapa_amostra, n_linha_mapa_amostra, data_inativacao_mapa_amostra, data_mapa_amostra, id_lab)"
            + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            //+ "('" + estante_mapa_amostra  + "','" + nome_mapa_amostra + "','" + freezer_mapa_amostra + "','" + caixa_mapa_amostra + "','" + n_coluna_mapa_amostra + "','" + n_linha_mapa_amostra + "','" + data_inativacao_mapa_amostra + "')";

            Connection con = Conexao.Conectar();
            PreparedStatement stInserirMapaDeAmostras = con.prepareStatement(sqlInserirMapaDeAmostras);
            stInserirMapaDeAmostras.setString(1, estante_mapa_amostra);
            stInserirMapaDeAmostras.setString(2, nome_mapa_amostra);
            stInserirMapaDeAmostras.setString(3, freezer_mapa_amostra);
            stInserirMapaDeAmostras.setString(4, caixa_mapa_amostra);
            stInserirMapaDeAmostras.setInt(5, n_coluna_mapa_amostra);
            stInserirMapaDeAmostras.setInt(6, n_linha_mapa_amostra);
            stInserirMapaDeAmostras.setDate(7, null);
            stInserirMapaDeAmostras.setDate(8, data_mapa_amostra);
            stInserirMapaDeAmostras.setInt(9, id_lab);
            stInserirMapaDeAmostras.executeUpdate();
            
            response.sendRedirect("./jsp/jspLogado/telaInicialMapaAmostras.jsp?filtro=3");

        } catch (SQLException ex) {
            out.print("Erro na conexão: " + ex);
        } 
	}
}
