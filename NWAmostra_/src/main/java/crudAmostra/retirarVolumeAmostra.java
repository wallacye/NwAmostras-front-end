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

import conexao.Conexao;

@WebServlet("/retirarVolumeAmostra")
public class retirarVolumeAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
        try {
    	Double volume_atual = Double.parseDouble(request.getParameter("volumeAtual"));
    	Double quant_hist_amostra = Double.parseDouble(request.getParameter("inputRetirarVolume"));
    	Integer id_amostra = Integer.parseInt(request.getParameter("idAmostraAdicionarVolume"));
    	Integer id_pesq = Integer.parseInt(request.getParameter("idPesqAdicionarVolume"));
    	Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));
    	java.sql.Date dt_hist_amostra = new java.sql.Date(System.currentTimeMillis());
    	String adicionou_retirou = "Retirou";
    	
    	Double novo_volume_atual = volume_atual - quant_hist_amostra;
    	
    	String sqlRetirarVolume = "UPDATE amostra_no_mapa_contem SET volume_amostra = (?) ";

                Connection con = Conexao.Conectar();
                PreparedStatement stRetirarVolume = con.prepareStatement(sqlRetirarVolume);
                stRetirarVolume.setDouble(1, novo_volume_atual);
                
                stRetirarVolume.executeUpdate();
    	
    	String sqlRetirarVolumeHist = "INSERT INTO historico_da_amostra_utiliza (quant_hist_amostra, id_amostra, id_pesq, dt_hist_amostra, adicionou_retirou)"
                + " VALUES (?, ?, ?, ?, ?) ";

                PreparedStatement stRetirarVolumeHist = con.prepareStatement(sqlRetirarVolumeHist);
                stRetirarVolumeHist.setDouble(1, quant_hist_amostra);
                stRetirarVolumeHist.setInt(2, id_amostra);
                stRetirarVolumeHist.setInt(3, id_pesq);
                stRetirarVolumeHist.setDate(4, dt_hist_amostra);
                stRetirarVolumeHist.setString(5, adicionou_retirou);
        	    
                stRetirarVolumeHist.executeUpdate();
    	
        	    response.sendRedirect("./jsp/jspLogado/amostra.jsp?id_amostra_mapa=" + id_amostra_mapa);
        	    
    	} catch (SQLException ex) {
            out.print("Erro na conexão, adicionar volume amostra: " + ex);
        } 
	}

}
