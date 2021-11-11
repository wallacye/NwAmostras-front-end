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
import model.Origem;

@WebServlet("/exibirOrigens")
public class exibirOrigens extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<Origem> listar(){
    	
    	ArrayList<Origem> Conteudo = new ArrayList<Origem>();
    	
        try {
            String sqlExibirOrigens = "SELECT * FROM origem ORDER BY id_origem ";
            
            Connection con = Conexao.Conectar();
            Statement stExibirOrigens = con.createStatement();
            ResultSet rsExibirOrigens = stExibirOrigens.executeQuery(sqlExibirOrigens);
            
            while ( rsExibirOrigens.next() ) {
            	Origem dados = new Origem();
            	
            	dados.setId_origem(rsExibirOrigens.getInt("id_origem"));
            	dados.setNome_origem(rsExibirOrigens.getString("nome_origem"));
                                           
               Conteudo.add(dados);
            }
            rsExibirOrigens.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarOrigens::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

    }

}
