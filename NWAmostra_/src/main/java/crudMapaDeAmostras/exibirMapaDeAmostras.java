package crudMapaDeAmostras;

import conexao.Conexao;

import model.MapaDeAmostras;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/exibirMapaDeAmostras")
public class exibirMapaDeAmostras extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public ArrayList<MapaDeAmostras> listar(Integer filtro)
    {
    	
    	ArrayList<MapaDeAmostras> Conteudo = new ArrayList<MapaDeAmostras>(filtro);
    	
        try 
        {
        	String orderBy = "A";
        	
        	if (filtro == null || filtro == 3)
        	{
        		orderBy = " ORDER BY nome_mapa_amostra ";
        	}
        	if (filtro == 1)
        	{
        		orderBy = " ORDER BY id_mapa_amostra DESC ";
        	}
        	if (filtro == 2)
        	{
        		orderBy = " ORDER BY id_mapa_amostra ASC ";
        	}
            String sqlExibirMapaDeAmostras = "SELECT * FROM mapa_de_amostras  WHERE data_inativacao_mapa_amostra IS NULL " + orderBy;
            
            Connection con = Conexao.Conectar();
            Statement stExibirMapaDeAmostras = con.createStatement();
            ResultSet rsExibirMapaDeAmostras = stExibirMapaDeAmostras.executeQuery(sqlExibirMapaDeAmostras);
            
            while ( rsExibirMapaDeAmostras.next() ) 
            {
                MapaDeAmostras dados = new MapaDeAmostras();
                dados.setId_mapa_amostra(rsExibirMapaDeAmostras.getInt("id_mapa_amostra"));
                dados.setEstante_mapa_amostra(rsExibirMapaDeAmostras.getString("estante_mapa_amostra"));
                dados.setNome_mapa_amostra(rsExibirMapaDeAmostras.getString("nome_mapa_amostra"));
                dados.setFreezer_mapa_amostra(rsExibirMapaDeAmostras.getString("freezer_mapa_amostra"));
                dados.setCaixa_mapa_amostra(rsExibirMapaDeAmostras.getString("caixa_mapa_amostra"));
                dados.setN_coluna_mapa_amostra(rsExibirMapaDeAmostras.getInt("n_coluna_mapa_amostra"));
                dados.setN_linha_mapa_amostra(rsExibirMapaDeAmostras.getInt("n_linha_mapa_amostra"));
                dados.setData_inativacao_mapa_amostra(rsExibirMapaDeAmostras.getDate("data_inativacao_mapa_amostra"));
                dados.setData_mapa_amostra(rsExibirMapaDeAmostras.getDate("data_mapa_amostra"));
                
                Date dataParaConverter = rsExibirMapaDeAmostras.getDate("data_mapa_amostra"); 
                
                if(dataParaConverter != null) 
                {
                java.util.Date utilDate = new java.util.Date(dataParaConverter.getTime());
                String DataFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  

                dados.setData_mapa_amostra_formatada(DataFormatada);
                }
                else 
                {
                    dados.setData_mapa_amostra_formatada(null);
                }
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
