package crudAmostra;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.AmostraNoMapa;

/**
 * Servlet implementation class exibirAmostra
 */
@WebServlet("/exibirAmostra")
public class exibirAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<AmostraNoMapa> listar(Integer id_amostra_mapa){
    	
    	ArrayList<AmostraNoMapa> Conteudo = new ArrayList<AmostraNoMapa>();
    	
        try {
            String sqlExibirAmostras = "SELECT * FROM amostra_no_mapa_contem "
            		+ "INNER JOIN mapa_de_amostras ON mapa_de_amostras.id_mapa_amostra = amostra_no_mapa_contem.id_mapa_amostra "
            		+ "INNER JOIN amostra ON amostra_no_mapa_contem.id_amostra = amostra.id_amostra "
            		+ "INNER JOIN origem ON origem.id_origem = amostra.id_origem "
            		+ "INNER JOIN categoria ON categoria.id_categoria = amostra.id_categoria WHERE id_amostra_mapa ="+id_amostra_mapa;            		
            
            Connection con = Conexao.Conectar();
            Statement stExibirAmostras = con.createStatement();
            ResultSet rsExibirAmostras = stExibirAmostras.executeQuery(sqlExibirAmostras);
            
            while ( rsExibirAmostras.next() ) {
            	AmostraNoMapa dados = new AmostraNoMapa();
            	
            	dados.setId_amostra_mapa(rsExibirAmostras.getInt("id_amostra_mapa"));
            	dados.setId_div_mapa_amostra(rsExibirAmostras.getInt("id_div_mapa_amostra"));
            	dados.setN_coluna_amostra(rsExibirAmostras.getInt("n_coluna_amostra"));
            	dados.setN_linha_amostra(rsExibirAmostras.getInt("n_linha_amostra"));
            	dados.setValidade_amostra(rsExibirAmostras.getDate("validade_amostra"));
            	dados.setDt_coleta_amostra(rsExibirAmostras.getDate("dt_coleta_amostra"));
            	dados.setVolume_amostra(rsExibirAmostras.getDouble("volume_amostra"));
            	dados.setHora_coleta_amostra(rsExibirAmostras.getTime("hora_coleta_amostra"));
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
                dados.setNome_origem(rsExibirAmostras.getString("nome_origem"));
                
                String EnderecoParaSeparar = rsExibirAmostras.getString("endereco_origem");
                
                List<String> listaEndereco = Arrays.asList(EnderecoParaSeparar.split(","));
                
                dados.setRua_origem(listaEndereco.get(0));
                dados.setNumero_origem(listaEndereco.get(1));
                dados.setBairro_origem(listaEndereco.get(2));
                dados.setCep_origem(listaEndereco.get(3));
                dados.setComplemento_origem(listaEndereco.get(4));

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
                
                Date dataColetaAmostraParaConverter = rsExibirAmostras.getDate("dt_coleta_amostra");                 
                if(dataColetaAmostraParaConverter != null) {
                java.util.Date utilDate = new java.util.Date(dataColetaAmostraParaConverter.getTime());
                String DataColetaAmostraFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  
                dados.setData_formatada_coleta(DataColetaAmostraFormatada);
                }
                else {
                    dados.setData_formatada_coleta(null);
                }               
                Conteudo.add(dados);
            }
            rsExibirAmostras.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarAmostra::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

    }


}
