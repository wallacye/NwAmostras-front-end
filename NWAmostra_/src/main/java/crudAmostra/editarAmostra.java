package crudAmostra;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

import java.io.*;

@WebServlet("/editarAmostra")
public class editarAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        try {
		String codigo_amostra = request.getParameter("txtEditarAmostraCodigo");
    	String nome_amostra = request.getParameter("txtEditarAmostraNome");		
    	String coletador_amostra = request.getParameter("txtEditarAmostraColetador");						
    	String anotacoes_amostra = request.getParameter("txtEditarAmostraAnotacoes");
    	String tipo_amostra = request.getParameter("txtEditarAmostraTipo");
    	Integer id_categoria = Integer.parseInt(request.getParameter("txtEditarAmostraCategoria"));
    	Integer id_origem = Integer.parseInt(request.getParameter("txtEditarAmostraNomeOrigem"));
    	
    	Integer id_amostra = Integer.parseInt(request.getParameter("txtIdAmostra"));
    	
    	String txtDataColetaAmostra = request.getParameter("txtEditarAmostraDataColeta");
    	String txtDataValidadeAmostra = request.getParameter("txtEditarAmostraDataValidade");
    	
    	Integer id_mapa_amostra = Integer.parseInt(request.getParameter("txtEditarAmostraNomeMapaAmostras"));
    	Integer n_coluna_amostra = Integer.parseInt(request.getParameter("txtEditarAmostraColuna"));
    	Integer n_linha_amostra = Integer.parseInt(request.getParameter("txtEditarAmostraLinha"));
    	String hora_coleta_amostra = request.getParameter("txtEditarAmostraHoraColeta");
    	
    	Date UTILdt_coleta_amostra = null;
    	java.sql.Date dt_coleta_amostra;
    	Date UTILvalidade_amostra = null;
    	java.sql.Date validade_amostra;

    	
    	DateFormat df = new SimpleDateFormat ("yyyy-MM-dd");
    	df.setLenient (false); 

    	
    	try {
			UTILdt_coleta_amostra = df.parse (txtDataColetaAmostra);
		} catch (ParseException e) {
            out.print("ERRO CONVERS√O DATA COLETA AMOSTRA" + e);
		}
    	dt_coleta_amostra = new java.sql.Date(UTILdt_coleta_amostra.getTime());
    	
   	
    	try {
			UTILvalidade_amostra = df.parse (txtDataValidadeAmostra);
		} catch (ParseException e) {
            out.print("ERRO CONVERS√O DATA VALIDADE AMOSTRA" + e);
		}
    	validade_amostra = new java.sql.Date(UTILvalidade_amostra.getTime());
    	
    	 String sqlEditarAmostra = "UPDATE amostra SET coletador_amostra = (?), anotacoes_amostra = (?), tipo_amostra = (?), id_categoria = (?), id_origem = (?), nome_amostra = (?), codigo_amostra = (?) WHERE id_amostra = " + id_amostra;

            Connection con = Conexao.Conectar();
         	PreparedStatement stEditarAmostra = con.prepareStatement(sqlEditarAmostra, Statement.RETURN_GENERATED_KEYS);
         	stEditarAmostra.setString(1, coletador_amostra);
         	stEditarAmostra.setString(2, anotacoes_amostra);
         	stEditarAmostra.setString(3, tipo_amostra);
         	stEditarAmostra.setInt(4, id_categoria);
         	stEditarAmostra.setInt(5, id_origem);
         	stEditarAmostra.setString(6, nome_amostra);
         	stEditarAmostra.setString(7, codigo_amostra);
         	    
         	stEditarAmostra.executeUpdate();
         	
         	
                    
            	    String sqlEditarAmostraNoMapaContem = "UPDATE amostra_no_mapa_contem SET n_coluna_amostra = (?), n_linha_amostra = (?), validade_amostra = (?), dt_coleta_amostra = (?), hora_coleta_amostra = (?), id_amostra = (?), id_mapa_amostra = (?), fase_coleta = (?),  data_inativacao_amostra = (?) WHERE id_amostra =" + id_amostra;       	    
                    	    
                    	    
                    	    PreparedStatement stEditarAmostraNoMapaContem = con.prepareStatement(sqlEditarAmostraNoMapaContem);
                    	    
                    	    stEditarAmostraNoMapaContem.setInt(1, n_coluna_amostra);
                    	    stEditarAmostraNoMapaContem.setInt(2, n_linha_amostra);
                    	    stEditarAmostraNoMapaContem.setDate(3, validade_amostra);
                    	    stEditarAmostraNoMapaContem.setDate(4, dt_coleta_amostra);
                    	    stEditarAmostraNoMapaContem.setString(5, hora_coleta_amostra);
                    	    stEditarAmostraNoMapaContem.setInt(6, id_amostra);
                    	    stEditarAmostraNoMapaContem.setInt(7, id_mapa_amostra);
                    	    stEditarAmostraNoMapaContem.setString(8, "");
                    	    stEditarAmostraNoMapaContem.setDate(9, null);
                    	    stEditarAmostraNoMapaContem.executeUpdate();
                 
            response.sendRedirect("./jsp/jspLogado/mapaAmostras.jsp?id_mapa_amostra=" + id_mapa_amostra);

        } catch (SQLException ex) {
            out.print("Erro na conex√£o, inserir amostra: " + ex);
        } 
	}

}
