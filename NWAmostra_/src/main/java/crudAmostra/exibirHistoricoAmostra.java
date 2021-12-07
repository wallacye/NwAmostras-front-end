package crudAmostra;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;
import model.HistoricoAmostra;
import model.MapaDeAmostras;

@WebServlet("/exibirHistoricoAmostra")
public class exibirHistoricoAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public ArrayList<HistoricoAmostra> listar(Integer id_amostra, Integer id_lab){
    	ArrayList<HistoricoAmostra> Conteudo = new ArrayList<HistoricoAmostra>();
    	
        try {
            String sqlExibirHistoricoAmostra = "SELECT * FROM historico_da_amostra_utiliza "
            		+ "INNER JOIN amostra ON historico_da_amostra_utiliza.id_amostra = amostra.id_amostra "
            		+ "INNER JOIN pesquisador ON historico_da_amostra_utiliza.id_pesq = pesquisador.id_pesq "
            		+ "WHERE amostra.id_amostra = " + id_amostra + " AND amostra.id_lab =" + id_lab
            		+ " ORDER BY id_hist_amostra DESC";
            
            Connection con = Conexao.Conectar();
            Statement stExibirHistoricoAmostra = con.createStatement();
            ResultSet rsExibirHistoricoAmostra = stExibirHistoricoAmostra.executeQuery(sqlExibirHistoricoAmostra);
            
            while ( rsExibirHistoricoAmostra.next() ) {
            	HistoricoAmostra dados = new HistoricoAmostra();
                dados.setId_hist_amostra(rsExibirHistoricoAmostra.getInt("id_hist_amostra"));
                dados.setAdicionou_retirou(rsExibirHistoricoAmostra.getString("adicionou_retirou"));
                dados.setId_amostra(rsExibirHistoricoAmostra.getInt("id_amostra"));
                dados.setId_pesq(rsExibirHistoricoAmostra.getInt("id_pesq"));
                dados.setDt_hist_amostra(rsExibirHistoricoAmostra.getDate("dt_hist_amostra"));
                dados.setQuant_hist_amostra(rsExibirHistoricoAmostra.getDouble("quant_hist_amostra"));
                dados.setNome_pesq(rsExibirHistoricoAmostra.getString("nome_pesq"));
                
                Date dataParaConverter = rsExibirHistoricoAmostra.getDate("dt_hist_amostra"); 
                
                if(dataParaConverter != null) {
                java.util.Date utilDate = new java.util.Date(dataParaConverter.getTime());
                String DataFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  

                dados.setDt_hist_amostra_formatada(DataFormatada);
                }
                else {
                    dados.setDt_hist_amostra_formatada(null);
                }
                Conteudo.add(dados);
            }
            rsExibirHistoricoAmostra.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarHistorico::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

}}
