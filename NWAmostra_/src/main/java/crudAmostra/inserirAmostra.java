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
                	String txtDataValidadeAmostra = request.getParameter("txtDataValidadeAmostra");
                	Integer id_mapa_amostra = Integer.parseInt(request.getParameter("inputMapaDeAmostras"));
                	Integer n_coluna_amostra = Integer.parseInt(request.getParameter("inputColunaAmostra"));
                	Integer n_linha_amostra = Integer.parseInt(request.getParameter("inputLinhaAmostra"));
                	Double volume_amostra = Double.parseDouble(request.getParameter("txtVolumeAmostra"));
                	String hora_coleta_amostra = request.getParameter("txtHoraColetaAmostra");
                	
                	DateFormat df = new SimpleDateFormat ("dd/MM/yyyy");
                	df.setLenient (false); 

                	try {
						Date dt_coleta_amostra = df.parse (txtDataColetaAmostra);
					} catch (ParseException e) {
	                    out.print("ERRO CONVERS√O DATA COLETA AMOSTRA" + e);
					}
                	java.sql.Date dt_coleta_amostra = new java.sql.Date(dt_coleta_amostra.getTime());
                	
                	
                	try {
						Date validade_amostra = df.parse (txtDataValidadeAmostra);
					} catch (ParseException e) {
	                    out.print("ERRO CONVERS√O DATA VALIDADE AMOSTRA" + e);
					}
                	java.sql.Date validade_amostra = new java.sql.Date(validade_amostra.getTime());

                    String sqlInserirAmostra = "INSERT INTO amostra (id_amostra, coletador_amostra, anotacoes_amostra, tipo_amostra, id_categoria, id_origem, data_inativacao_amostra)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?) "
                    + "INSERT INTO amostra_no_mapa_contem (n_coluna_amostra, n_linha_amostra, validade_amostra, dt_coleta_amostra, volume_amostra, hora_coleta_amostra, id_amostra, id_mapa_amostra)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

                    Connection con = Conexao.Conectar();
            	    PreparedStatement stInserirAmostra = con.prepareStatement(sqlInserirAmostra);
            	    stInserirAmostra.setInt(1, id_amostra);
            	    stInserirAmostra.setString(2, coletador_amostra);
            	    stInserirAmostra.setString(3, anotacoes_amostra);
            	    stInserirAmostra.setString(4, tipo_amostra);
            	    stInserirAmostra.setInt(5, id_categoria);
            	    stInserirAmostra.setInt(6, id_origem);
            	    stInserirAmostra.setString(7, null);
            	    
            	    stInserirAmostra.setInt(8, n_coluna_amostra);
            	    stInserirAmostra.setInt(9, n_linha_amostra);
            	    stInserirAmostra.setDate(10, validade_amostra);
            	    stInserirAmostra.setDate(11, dt_coleta_amostra);
            	    stInserirAmostra.setDouble(12, volume_amostra);
            	    stInserirAmostra.setString(13, hora_coleta_amostra);
            	    stInserirAmostra.setInt(14, id_amostra);
            	    stInserirAmostra.setInt(15, id_mapa_amostra);
            	    stInserirAmostra.executeUpdate();
			
                    response.sendRedirect("/jspLogado/amostra.jsp");

                } catch (SQLException ex) {
                    out.print("Erro na conex√£o, inserir amostra: " + ex);
                } 
	}

}
