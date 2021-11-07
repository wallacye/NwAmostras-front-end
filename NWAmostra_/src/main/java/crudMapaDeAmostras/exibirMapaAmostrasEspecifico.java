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

//Criar outro servlet para exibir só coisas do mapa de amostra com
//o código dele, colocar esse só na parte de amostras

@WebServlet("/exibirMapaAmostrasEspecifico")
public class exibirMapaAmostrasEspecifico extends HttpServlet {
       
	public ArrayList<AmostraNoMapa> listar(Integer id_mapa_amostra){
        
        ArrayList<AmostraNoMapa> Conteudo = new ArrayList<AmostraNoMapa>();
        
        try{
            String sqlExibirMapaDeAmostrasEspecifico = "SELECT * FROM amostra_no_mapa_contem "
            		+ "INNER JOIN mapa_de_amostras ON mapa_de_amostras.id_mapa_amostra = amostra_no_mapa_contem.id_mapa_amostra "
            		+ "INNER JOIN amostra ON amostra_no_mapa_contem.id_amostra = amostra.id_amostra WHERE amostra_no_mapa_contem.id_mapa_amostra= "+id_mapa_amostra;
            
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
                
                dadosAmostraNoMapa.setId_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("id_mapa_amostra"));
                dadosAmostraNoMapa.setEstante_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("estante_mapa_amostra"));
                dadosAmostraNoMapa.setNome_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("nome_mapa_amostra"));
                dadosAmostraNoMapa.setFreezer_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("freezer_mapa_amostra"));
                dadosAmostraNoMapa.setCaixa_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getString("caixa_mapa_amostra"));
                dadosAmostraNoMapa.setN_coluna_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_coluna_mapa_amostra"));
                dadosAmostraNoMapa.setN_linha_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getInt("n_linha_mapa_amostra"));
                dadosAmostraNoMapa.setData_inativacao_mapa_amostra(rsExibirMapaDeAmostrasEspecifico.getDate("data_inativacao_mapa_amostra"));

                dadosAmostraNoMapa.setColetador_amostra(rsExibirMapaDeAmostrasEspecifico.getString("coletador_amostra"));
                dadosAmostraNoMapa.setAnotacoes_amostra(rsExibirMapaDeAmostrasEspecifico.getString("anotacoes_amostra"));
                dadosAmostraNoMapa.setTipo_amostra(rsExibirMapaDeAmostrasEspecifico.getString("tipo_amostra"));
                dadosAmostraNoMapa.setNome_amostra(rsExibirMapaDeAmostrasEspecifico.getString("nome_amostra"));
                Conteudo.add(dadosAmostraNoMapa);
            }
            rsExibirMapaDeAmostrasEspecifico.close();
            con.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("ErroExibirMapaAmostras: ");
            System.out.print(e.getMessage());
        }
        return null;
    }


}
