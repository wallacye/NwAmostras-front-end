package crudAmostra;

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

@WebServlet("/adicionarVolumeAmostra")
public class adicionarVolumeAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        try {
    	Double volume_atual = Double.parseDouble(request.getParameter("volumeAtual"));
    	Double quant_hist_amostra = Double.parseDouble(request.getParameter("inputAdicionarVolume"));
    	Integer id_amostra = Integer.parseInt(request.getParameter("idAmostraAdicionarVolume"));
    	Integer id_pesq = Integer.parseInt(request.getParameter("idPesqAdicionarVolume"));
    	Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));
    	java.sql.Date dt_hist_amostra = new java.sql.Date(System.currentTimeMillis());
    	String adicionou_retirou = "Adicionou";
    	
    	Double novo_volume_atual = quant_hist_amostra + volume_atual;
    	
    	String sqlAdicionarVolume = "UPDATE amostra_no_mapa_contem SET volume_amostra = (?) ";

                Connection con = Conexao.Conectar();
                PreparedStatement stAdicionarVolume = con.prepareStatement(sqlAdicionarVolume);
                stAdicionarVolume.setDouble(1, novo_volume_atual);
                
                stAdicionarVolume.executeUpdate();
    	
    	String sqlAdicionarVolumeHist = "INSERT INTO historico_da_amostra_utiliza (quant_hist_amostra, id_amostra, id_pesq, dt_hist_amostra, adicionou_retirou)"
                + " VALUES (?, ?, ?, ?, ?) ";

                PreparedStatement stAdicionarVolumeHist = con.prepareStatement(sqlAdicionarVolumeHist);
                stAdicionarVolumeHist.setDouble(1, quant_hist_amostra);
                stAdicionarVolumeHist.setInt(2, id_amostra);
                stAdicionarVolumeHist.setInt(3, id_pesq);
                stAdicionarVolumeHist.setDate(4, dt_hist_amostra);
                stAdicionarVolumeHist.setString(5, adicionou_retirou);
        	    
        	    stAdicionarVolumeHist.executeUpdate();
    	
        	    response.sendRedirect("./jsp/jspLogado/amostra.jsp?id_amostra_mapa=" + id_amostra_mapa);
        	    
    	} catch (SQLException ex) {
            out.print("Erro na conexão, adicionar volume amostra: " + ex);
        } 
	}

}
