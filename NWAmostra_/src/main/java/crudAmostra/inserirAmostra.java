package crudAmostra;



import java.io.*;
import java.sql.*;
import java.time.LocalDateTime;

import conexao.Conexao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "inserirAmostra", urlPatterns = {"/inserirAmostra"})
public class inserirAmostra extends HttpServlet {
	
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
    			PrintWriter out = response.getWriter();
                try {
                	
                	Integer id_amostra = Integer.parseInt(request.getParameter("txtCodigoAmostra"));
                	String nome_amostra = request.getParameter("txtNomeAmostra");		
                	String coletador_amostra = request.getParameter("txtColetadorAmostra");						
                	String anotacoes_amostra = request.getParameter("txtAnotacoesAmostra");
                	String tipo_amostra = request.getParameter("txtTipoAmostra");
                	Integer id_categoria = Integer.parseInt(request.getParameter("txtCategoriaAmostra"));
                	Integer id_origem = Integer.parseInt(request.getParameter("txtIdOrigem"));
                	LocalDateTime data_inativacao_amostra = LocalDateTime.parse(request.getParameter("txtDataInativacaoAmostra"));

                    String sqlInserirAmostra = "INSERT INTO amostra (coletador_amostra, anotacoes_amostra, tipo_amostra, id_categoria, id_origem, data_inativacao_amostra)"
                    + " VALUES ('" + coletador_amostra  + "','" + anotacoes_amostra + "','" + tipo_amostra + "','" + id_categoria + "','" + id_origem + "','" + data_inativacao_amostra + "')";

                    Connection con = Conexao.conexao();
                    Statement stInserirAmostra = con.prepareStatement(sqlInserirAmostra);
                    stInserirAmostra.execute(sqlInserirAmostra);
                    response.sendRedirect("/jspLogado/mapaAmostras.jsp");

                } catch (SQLException ex) {
                    out.print("Erro na conexão: " + ex);
                } 
	}

}
