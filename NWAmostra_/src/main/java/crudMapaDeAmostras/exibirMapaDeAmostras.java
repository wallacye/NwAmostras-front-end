package crudMapaDeAmostras;

import conexao.Conexao;

import model.MapaDeAmostras;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/exibirMapaDeAmostras")
public class exibirMapaDeAmostras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<MapaDeAmostras> listar(){
    	
    	ArrayList<MapaDeAmostras> Conteudo = new ArrayList<MapaDeAmostras>();
    	
        try {
            String sqlExibirMapaDeAmostras = "SELECT * FROM mapa_de_amostras ORDER BY nome_mapa_amostra";
            
            Connection con = Conexao.Conectar();
            Statement stExibirMapaDeAmostras = con.createStatement();
            ResultSet rsExibirMapaDeAmostras = stExibirMapaDeAmostras.executeQuery(sqlExibirMapaDeAmostras);
            
            while ( rsExibirMapaDeAmostras.next() ) {
                MapaDeAmostras dados = new MapaDeAmostras();
                dados.setId_mapa_amostra(rsExibirMapaDeAmostras.getInt("id_mapa_amostra"));
                dados.setEstante_mapa_amostra(rsExibirMapaDeAmostras.getString("estante_mapa_amostra"));
                dados.setNome_mapa_amostra(rsExibirMapaDeAmostras.getString("nome_mapa_amostra"));
                dados.setFreezer_mapa_amostra(rsExibirMapaDeAmostras.getString("freezer_mapa_amostra"));
                dados.setCaixa_mapa_amostra(rsExibirMapaDeAmostras.getString("caixa_mapa_amostra"));
                dados.setN_coluna_mapa_amostra(rsExibirMapaDeAmostras.getInt("n_coluna_mapa_amostra"));
                dados.setN_linha_mapa_amostra(rsExibirMapaDeAmostras.getInt("n_linha_mapa_amostra"));
                dados.setData_inativacao_mapa_amostra(rsExibirMapaDeAmostras.getDate("data_inativacao_mapa_amostra"));
                Conteudo.add(dados);
            }
            rsExibirMapaDeAmostras.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarMapaDeAmostras::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

    }


}
