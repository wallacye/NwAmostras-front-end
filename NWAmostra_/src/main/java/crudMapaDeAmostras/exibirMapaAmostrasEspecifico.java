package crudMapaDeAmostras;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.Amostra;
import model.AmostraNoMapa;
import model.MapaDeAmostras;

//Criar outro servlet para exibir só coisas do mapa de amostra com
//o código dele, colocar esse só na parte de amostras

@WebServlet("/exibirMapaAmostrasEspecifico")
public class exibirMapaAmostrasEspecifico extends HttpServlet {
       
	public ArrayList<AmostraNoMapa> listar(Integer id_mapa_amostra){
        
        ArrayList<AmostraNoMapa> Conteudo = new ArrayList<AmostraNoMapa>();
        
        try{
            String sqlExibirMapaDeAmostrasEspecifico = "SELECT * FROM amostra_no_mapa_contem "
            		+ "INNER JOIN mapa_de_amostras ON mapa_de_amostras.id_mapa_amostra = amostra_no_mapa_contem.id_mapa_amostra "
            		+ "INNER JOIN amostra ON amostra_no_mapa_contem.id_amostra = amostra.id_amostra "
            		+ "WHERE amostra_no_mapa_contem.id_mapa_amostra= "+id_mapa_amostra;
            
            Connection con = Conexao.Conectar();
            Statement stExibirMapaDeAmostrasEspecifico = con.createStatement();
            ResultSet rsExibirMapaDeAmostrasEspecifico = stExibirMapaDeAmostrasEspecifico.executeQuery(sqlExibirMapaDeAmostrasEspecifico);
            while ( rsExibirMapaDeAmostrasEspecifico.next() ) {
            	
            	AmostraNoMapa dadosAmostraNoMapa = new AmostraNoMapa();
            	dadosAmostraNoMapa.setId_amostra_mapa(rsExibirMapaDeAmostrasEspecifico.getInt("id_amostra_mapa"));
            	dadosAmostraNoMapa.setN_coluna_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_coluna_amostra"));
            	dadosAmostraNoMapa.setN_linha_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_linha_amostra"));
            	dadosAmostraNoMapa.setDt_coleta_amostra(rsExibirMapaDeAmostrasEspecifico.getDate("dt_coleta_amostra"));
            	dadosAmostraNoMapa.setVolume_amostra(rsExibirMapaDeAmostrasEspecifico.getDouble("volume_amostra"));
            	dadosAmostraNoMapa.setHora_coleta_amostra(rsExibirMapaDeAmostrasEspecifico.getString("hora_coleta_amostra"));
            	dadosAmostraNoMapa.setId_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_amostra"));
            	dadosAmostraNoMapa.setId_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_mapa_amostra"));
                
                dadosAmostraNoMapa.setColetador_amostra(rsExibirMapaDeAmostrasEspecifico.getString("coletador_amostra"));
                dadosAmostraNoMapa.setAnotacoes_amostra(rsExibirMapaDeAmostrasEspecifico.getString("anotacoes_amostra"));
                dadosAmostraNoMapa.setTipo_amostra(rsExibirMapaDeAmostrasEspecifico.getString("tipo_amostra"));
                dadosAmostraNoMapa.setNome_amostra(rsExibirMapaDeAmostrasEspecifico.getString("nome_amostra"));
                
                Date dataAmostraParaConverter = rsExibirMapaDeAmostrasEspecifico.getDate("validade_amostra");                 
                if(dataAmostraParaConverter != null) {
                java.util.Date utilDate = new java.util.Date(dataAmostraParaConverter.getTime());
                String DataValidadeAmostraFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  
                dadosAmostraNoMapa.setData_formatada_vencimento(DataValidadeAmostraFormatada);
                }
                else {
                	dadosAmostraNoMapa.setData_formatada_vencimento(null);
                }               
                Conteudo.add(dadosAmostraNoMapa);
            }
            rsExibirMapaDeAmostrasEspecifico.close();
            con.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("ErroExibirMapaAmostrasAMOSTRA: ");
            System.out.print(e.getMessage());
        }
        return null;
    }
	public ArrayList<MapaDeAmostras> listarMapa(Integer id_mapa_amostra){
        
        ArrayList<MapaDeAmostras> ConteudoMapa = new ArrayList<MapaDeAmostras>();
        
        try{
            String sqlExibirMapaDeAmostras = "SELECT * FROM mapa_de_amostras "
            		+ "WHERE id_mapa_amostra= "+id_mapa_amostra;
            
            Connection con = Conexao.Conectar();
            Statement stExibirMapaDeAmostras = con.createStatement();
            ResultSet rsExibirMapaDeAmostras = stExibirMapaDeAmostras.executeQuery(sqlExibirMapaDeAmostras);
            while ( rsExibirMapaDeAmostras.next() ) {
            	
            	MapaDeAmostras dadosMapa = new MapaDeAmostras();
              
            	dadosMapa.setId_mapa_amostra(rsExibirMapaDeAmostras.getInt("id_mapa_amostra"));
            	dadosMapa.setEstante_mapa_amostra(rsExibirMapaDeAmostras.getString("estante_mapa_amostra"));
            	dadosMapa.setNome_mapa_amostra(rsExibirMapaDeAmostras.getString("nome_mapa_amostra"));
            	dadosMapa.setFreezer_mapa_amostra(rsExibirMapaDeAmostras.getString("freezer_mapa_amostra"));
            	dadosMapa.setCaixa_mapa_amostra(rsExibirMapaDeAmostras.getString("caixa_mapa_amostra"));
            	dadosMapa.setN_coluna_mapa_amostra(rsExibirMapaDeAmostras.getInt("n_coluna_mapa_amostra"));
            	dadosMapa.setN_linha_mapa_amostra(rsExibirMapaDeAmostras.getInt("n_linha_mapa_amostra"));
            	dadosMapa.setData_inativacao_mapa_amostra(rsExibirMapaDeAmostras.getDate("data_inativacao_mapa_amostra"));
                ConteudoMapa.add(dadosMapa);
            }
            rsExibirMapaDeAmostras.close();
            con.close();
            
            return ConteudoMapa;
        }
        catch(Exception e){
            System.out.print("ErroExibirMapaAmostrasMAPA: ");
            System.out.print(e.getMessage());
        }
        return null;
    }


}
