package crudAmostra;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.AmostraNoMapa;

@WebServlet("/exibirAmostras")
public class exibirAmostras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<AmostraNoMapa> listar(Integer filtro){
    	
    	ArrayList<AmostraNoMapa> Conteudo = new ArrayList<AmostraNoMapa>(filtro);
    	
        try {
        	
        	String orderBy = "A";
        	
        	if (filtro == 1)
        	{
        		orderBy = " ORDER BY codigo_amostra ";
        	}
        	if (filtro == 2)
        	{
        		orderBy = " ORDER BY nome_amostra ";
        	}
        	if (filtro == 3)
        	{
        		orderBy = " ORDER BY validade_amostra ";
        	}
        	if (filtro == 4)
        	{
        		orderBy = " AND volume_amostra = 0 ";
        	}
        	if (filtro == 5)
        	{
        		orderBy = " AND DATE(validade_amostra) < curdate() ";
        	}
        	if (filtro == 6)
        	{
        		orderBy = " AND fase_coleta IS NOT null ";
        	}
        	if (filtro == 7)
        	{
        		orderBy = " ORDER BY nome_mapa_amostra ";
        	}
        	if (filtro == 8)
        	{
        		orderBy = " AND categoria.id_categoria = 1 ";
        	}
        	if (filtro == 9)
        	{
        		orderBy = " AND categoria.id_categoria = 2 ";
        	}
        	if (filtro == 10)
        	{
        		orderBy = " AND categoria.id_categoria = 3 ";
        	}
        	if (filtro == 11)
        	{
        		orderBy = " AND categoria.id_categoria = 4 ";
        	}
        	if (filtro == 12)
        	{
        		orderBy = " AND categoria.id_categoria = 5 ";
        	}

            String sqlExibirAmostras = "SELECT * FROM amostra_no_mapa_contem "
            		+ "INNER JOIN mapa_de_amostras ON mapa_de_amostras.id_mapa_amostra = amostra_no_mapa_contem.id_mapa_amostra "
            		+ "INNER JOIN amostra ON amostra_no_mapa_contem.id_amostra = amostra.id_amostra "
            		+ "INNER JOIN origem ON origem.id_origem = amostra.id_origem "
            		+ "INNER JOIN categoria ON categoria.id_categoria = amostra.id_categoria "
            		+ "WHERE data_inativacao_amostra IS NULL "
            		+ orderBy;            		
            
            Connection con = Conexao.Conectar();
            Statement stExibirAmostras = con.createStatement();
            ResultSet rsExibirAmostras = stExibirAmostras.executeQuery(sqlExibirAmostras);
            
            while ( rsExibirAmostras.next() ) {
            	AmostraNoMapa dados = new AmostraNoMapa();
            	
            	dados.setId_amostra_mapa(rsExibirAmostras.getInt("id_amostra_mapa"));
            	dados.setN_coluna_amostra(rsExibirAmostras.getInt("n_coluna_amostra"));
            	dados.setN_linha_amostra(rsExibirAmostras.getInt("n_linha_amostra"));
            	dados.setValidade_amostra(rsExibirAmostras.getDate("validade_amostra"));
            	dados.setDt_coleta_amostra(rsExibirAmostras.getDate("dt_coleta_amostra"));
            	dados.setVolume_amostra(rsExibirAmostras.getDouble("volume_amostra"));
            	dados.setHora_coleta_amostra(rsExibirAmostras.getString("hora_coleta_amostra"));
            	dados.setId_amostra(rsExibirAmostras.getInt("id_amostra"));
            	dados.setId_mapa_amostra(rsExibirAmostras.getInt("id_mapa_amostra"));
            	
                dados.setEstante_mapa_amostra(rsExibirAmostras.getString("estante_mapa_amostra"));
                dados.setNome_mapa_amostra(rsExibirAmostras.getString("nome_mapa_amostra"));
                dados.setFreezer_mapa_amostra(rsExibirAmostras.getString("freezer_mapa_amostra"));
                dados.setCaixa_mapa_amostra(rsExibirAmostras.getString("caixa_mapa_amostra"));
                dados.setData_mapa_amostra(rsExibirAmostras.getDate("data_mapa_amostra"));
                
                dados.setColetador_amostra(rsExibirAmostras.getString("coletador_amostra"));
                dados.setAnotacoes_amostra(rsExibirAmostras.getString("anotacoes_amostra"));
                dados.setTipo_amostra(rsExibirAmostras.getString("tipo_amostra"));
                dados.setId_categoria(rsExibirAmostras.getInt("id_categoria"));
                dados.setId_origem(rsExibirAmostras.getInt("id_origem"));
                dados.setNome_amostra(rsExibirAmostras.getString("nome_amostra"));
                dados.setNome_categoria(rsExibirAmostras.getString("nome_categoria"));
                
                dados.setCodigo_amostra(rsExibirAmostras.getString("codigo_amostra"));
                
                Date dataMapaAmostrasParaConverter = rsExibirAmostras.getDate("data_mapa_amostra");                 
                if(dataMapaAmostrasParaConverter != null) {
                java.util.Date utilDate = new java.util.Date(dataMapaAmostrasParaConverter.getTime());
                String DataMapaAmostrasFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  
                dados.setData_mapa_amostra_formatada(DataMapaAmostrasFormatada);
                }
                else {
                    dados.setData_mapa_amostra_formatada(null);
                }          	
                
                Date dataAmostraParaConverter = rsExibirAmostras.getDate("validade_amostra");                 
                if(dataAmostraParaConverter != null) {
                java.util.Date utilDate = new java.util.Date(dataAmostraParaConverter.getTime());
                String DataValidadeAmostraFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  
                dados.setData_formatada_vencimento(DataValidadeAmostraFormatada);
                }
                else {
                    dados.setData_formatada_vencimento(null);
                }               
                
              
                Conteudo.add(dados);
            }
            rsExibirAmostras.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarAmostras::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

    }

}
