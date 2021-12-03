package crudMapaDeAmostras;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.MapaDeAmostras;
import model.Origem;

@WebServlet("/exibirListaMapaAmostra")
public class exibirListaMapaAmostra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
public ArrayList<MapaDeAmostras> listar(){
    	
    	ArrayList<MapaDeAmostras> ConteudoListaMapaAmostras = new ArrayList<MapaDeAmostras>();
    	
        try {
            String sqlExibirListaMapaAmostras = "SELECT * FROM mapa_de_amostras";
            
            Connection con = Conexao.Conectar();
            Statement stExibirListaMapaAmostras = con.createStatement();
            ResultSet rsExibirListaMapaAmostras = stExibirListaMapaAmostras.executeQuery(sqlExibirListaMapaAmostras);
            
            while ( rsExibirListaMapaAmostras.next() ) {
            	MapaDeAmostras dados = new MapaDeAmostras();
            	
            	dados.setId_mapa_amostra(rsExibirListaMapaAmostras.getInt("id_mapa_amostra"));
            	dados.setNome_mapa_amostra(rsExibirListaMapaAmostras.getString("nome_mapa_amostra"));
                                           
            	ConteudoListaMapaAmostras.add(dados);
            }
            rsExibirListaMapaAmostras.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarMapaDeAmostras::ERRO");
            System.out.println(e.getMessage());
        }
        return ConteudoListaMapaAmostras;

    }

}
