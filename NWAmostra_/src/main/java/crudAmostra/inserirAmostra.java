package crudAmostra;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.*;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;


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
                	String txtDataColetaAmostra = request.getParameter("txtDataColetaAmostra");
                	
                	DateFormat df = new SimpleDateFormat ("dd/MM/yyyy");
                	df.setLenient (false); 

                	try {
						Date dt_coleta_amostra = df.parse (txtDataColetaAmostra);
					} catch (ParseException e) {
	                    out.print("ERRO CONVERS√O DATAS AMOSTRA" + e);
					}
                	java.sql.Date dt_coleta_amostra = new java.sql.Date(dt_coleta_amostra.getTime());
                	

                    String sqlInserirOrigem = "INSERT INTO amostra (coletador_amostra, anotacoes_amostra, tipo_amostra, id_categoria, id_origem, data_inativacao_amostra)"
                    + " VALUES (?, ?, ?, ?, ?, ?) ";

                    Connection con = Conexao.Conectar();
            	    PreparedStatement stInserirOrigem = con.prepareStatement(sqlInserirOrigem);
            	    stInserirOrigem.setString(1, coletador_amostra);
            	    stInserirOrigem.setString(2, anotacoes_amostra);
            	    stInserirOrigem.setString(3, tipo_amostra);
            	    stInserirOrigem.setInt(4, id_categoria);
            	    stInserirOrigem.setInt(5, id_origem);
            	    stInserirOrigem.setString(6, null);
            	    stInserirOrigem.executeUpdate();
			
                    response.sendRedirect("/jspLogado/amostra.jsp");

                } catch (SQLException ex) {
                    out.print("Erro na conex√£o, inserir amostra: " + ex);
                } 
	}

}
