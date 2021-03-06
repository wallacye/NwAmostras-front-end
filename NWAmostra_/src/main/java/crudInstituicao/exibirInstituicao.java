package crudInstituicao;

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
import model.Instituicao;
import model.MapaDeAmostras;
import model.Pesquisador;

@WebServlet("/exibirInstituicao")
public class exibirInstituicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
public ArrayList<Instituicao> listarIntituicao(Integer id_pesq){
        
        ArrayList<Instituicao> ConteudoInstituicao = new ArrayList<Instituicao>();
        
        try{
            String sqlExibirInstituicao = "SELECT * FROM lab_pesq_possui "
            		+ "INNER JOIN laboratorio ON laboratorio.id_lab = lab_pesq_possui.id_lab "
            		+ "INNER JOIN pesquisador ON pesquisador.id_pesq = lab_pesq_possui.id_pesq "
            		+ "WHERE lab_pesq_possui.id_pesq = "+ id_pesq;
            
            Connection con = Conexao.Conectar();
            Statement stExibirInstituicao = con.createStatement();
            ResultSet rsExibirInstituicao = stExibirInstituicao.executeQuery(sqlExibirInstituicao);
            while ( rsExibirInstituicao.next() ) {
            	
            	Instituicao dadosAInstituicao = new Instituicao();
            	dadosAInstituicao.setId_lab(rsExibirInstituicao.getInt("id_lab"));
            	dadosAInstituicao.setId_lab_pesq_possui(rsExibirInstituicao.getInt("id_lab_pesq_possui"));
            	dadosAInstituicao.setCargo(rsExibirInstituicao.getInt("cargo"));
            	
            	dadosAInstituicao.setData_inativacao_lab(rsExibirInstituicao.getDate("data_inativacao_lab"));
            	
            	dadosAInstituicao.setTelefone_lab(rsExibirInstituicao.getString("telefone_lab"));
            	dadosAInstituicao.setNome_lab(rsExibirInstituicao.getString("nome_lab"));
            	dadosAInstituicao.setEndereco_lab(rsExibirInstituicao.getString("endereco_lab"));
                
            	dadosAInstituicao.setCnpj_lab(rsExibirInstituicao.getString("cnpj_lab"));
                
            	String EnderecoParaSeparar = rsExibirInstituicao.getString("endereco_lab");

            	List<String> listaEndereco = Arrays.asList(EnderecoParaSeparar.split(","));

            	dadosAInstituicao.setRua_instituicao(listaEndereco.get(0));
            	dadosAInstituicao.setCep_instituicao(listaEndereco.get(1));
            	dadosAInstituicao.setNumero_instituicao(listaEndereco.get(2));
            	dadosAInstituicao.setBairro_instituicao(listaEndereco.get(3));
            	dadosAInstituicao.setComplemento_instituicao(listaEndereco.get(4));
            	
            	ConteudoInstituicao.add(dadosAInstituicao);
        
            }
            rsExibirInstituicao.close();
            con.close();
            
            return ConteudoInstituicao;
        }
        catch(Exception e){
            System.out.print("ErroExibirInstituicao: ");
            System.out.print(e.getMessage());
        }
        
        return null;
    }
public ArrayList<Pesquisador> listarIntegrantesLab(Integer id_lab){
    
    ArrayList<Pesquisador> ConteudoIntegrantes = new ArrayList<Pesquisador>();
    
    try{
        String sqlIntegrantes = "SELECT * FROM lab_pesq_possui "
        		+ "INNER JOIN pesquisador ON lab_pesq_possui.id_pesq = pesquisador.id_pesq "
        		+ "WHERE lab_pesq_possui.id_lab= " + id_lab;
        
        Connection con = Conexao.Conectar();
        Statement stExibirIntegrantes = con.createStatement();
        ResultSet rsExibirIntegrantes = stExibirIntegrantes.executeQuery(sqlIntegrantes);
        while ( rsExibirIntegrantes.next() ) {
        	
        	Pesquisador dadosIntegrantes = new Pesquisador();
          
        	dadosIntegrantes.setNome_pesq(rsExibirIntegrantes.getString("nome_pesq"));
        	dadosIntegrantes.setId_pesq(rsExibirIntegrantes.getInt("id_pesq"));
        	
        	ConteudoIntegrantes.add(dadosIntegrantes);
        }
        rsExibirIntegrantes.close();
        con.close();
        
        return ConteudoIntegrantes;
    }
    catch(Exception e){
        System.out.print("ERRO EXIBIR INTEGRANTES: ");
        System.out.print(e.getMessage());
    }
    return null;
}

}
