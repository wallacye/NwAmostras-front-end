package crudMapaDeAmostras;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.Amostra;
import model.AmostraNoMapa;
import model.MapaDeAmostras;

//Mapa de Amostras
//Amostra (com o c�digo do mapa)
//Amostra no mapa

@WebServlet("/exibirMapaAmostrasEspecifico")
public class exibirMapaAmostrasEspecifico extends HttpServlet {
       
	public ArrayList<AmostraNoMapa> listar(Integer id_mapa_amostra){
        
        ArrayList<AmostraNoMapa> Conteudo = new ArrayList<AmostraNoMapa>();
        ArrayList<MapaDeAmostras> ConteudoMapa = new ArrayList<MapaDeAmostras>();
        ArrayList<Amostra> ConteudoAmostra = new ArrayList<Amostra>();
        
        try{
            String sqlExibirMapaDeAmostrasEspecifico = "SELECT * FROM amostra_no_mapa_contem "
            		+ "INNER JOIN mapa_de_amostras ON mapa_de_amostras.id_mapa_amostra = amostra_no_mapa_contem.id_mapa_amostra "
            		+ "INNER JOIN amostra ON amostra_no_mapa_contem.id_amostra = amostra.id_amostra "
            		+ " WHERE amostra_no_mapa_contem.id_mapa_amostra="+id_mapa_amostra;
            
            Connection con = Conexao.Conectar();
            Statement stExibirMapaDeAmostrasEspecifico = con.createStatement();
            ResultSet rsExibirMapaDeAmostrasEspecifico = stExibirMapaDeAmostrasEspecifico.executeQuery(sqlExibirMapaDeAmostrasEspecifico);
            while ( rsExibirMapaDeAmostrasEspecifico.next() ) {
            	
            	AmostraNoMapa dadosAmostraNoMapa = new AmostraNoMapa();
            	dadosAmostraNoMapa.setId_amostra_mapa(rsExibirMapaDeAmostrasEspecifico.getInt("id_amostra_mapa"));
            	dadosAmostraNoMapa.setId_div_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_div_mapa_amostra"));
            	dadosAmostraNoMapa.setN_coluna_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_coluna_amostra"));
            	dadosAmostraNoMapa.setN_linha_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_linha_amostra"));
            	dadosAmostraNoMapa.setValidade_amostra(rsExibirMapaDeAmostrasEspecifico.getDate("validade_amostra"));
            	dadosAmostraNoMapa.setDt_coleta_amostra(rsExibirMapaDeAmostrasEspecifico.getDate("dt_coleta_amostra"));
            	dadosAmostraNoMapa.setVolume_amostra(rsExibirMapaDeAmostrasEspecifico.getDouble("volume_amostra"));
            	dadosAmostraNoMapa.setHora_coleta_amostra(rsExibirMapaDeAmostrasEspecifico.getTime("hora_coleta_amostra"));
            	dadosAmostraNoMapa.setId_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_amostra"));
            	dadosAmostraNoMapa.setId_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_mapa_amostra"));
                
                MapaDeAmostras dadosMapaDeAmostras = new MapaDeAmostras();
                dadosMapaDeAmostras.setId_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_mapa_amostra"));
                dadosMapaDeAmostras.setEstante_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("estante_mapa_amostra"));
                dadosMapaDeAmostras.setNome_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("nome_mapa_amostra"));
                dadosMapaDeAmostras.setFreezer_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("freezer_mapa_amostra"));
                dadosMapaDeAmostras.setCaixa_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("caixa_mapa_amostra"));
                dadosMapaDeAmostras.setN_coluna_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_coluna_mapa_amostra"));
                dadosMapaDeAmostras.setN_linha_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_linha_mapa_amostra"));
                dadosMapaDeAmostras.setData_inativacao_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getDate("data_inativacao_mapa_amostra"));

                Amostra dadosAmostra = new Amostra();
            	
                Conteudo.add(dadosAmostraNoMapa);
                ConteudoMapa.add(dadosMapaDeAmostras);
            }
            rsExibirMapaDeAmostrasEspecifico.close();
            con.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro: ");
            System.out.print(e.getMessage());
        }
        return null;
    }


}