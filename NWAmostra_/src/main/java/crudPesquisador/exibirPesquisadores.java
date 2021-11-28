package crudPesquisador;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.Pesquisador;

@WebServlet("/exibirPesquisadores")
public class exibirPesquisadores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<Pesquisador> listar(){
    	
    	ArrayList<Pesquisador> Conteudo = new ArrayList<Pesquisador>();
    	
        try {
            String sqlExibirPesquisadores = "SELECT * FROM pesquisador";
            
            Connection con = Conexao.Conectar();
            Statement stExibirPesquisadores = con.createStatement();
            ResultSet rsExibirPesquisadores = stExibirPesquisadores.executeQuery(sqlExibirPesquisadores);
            
            while ( rsExibirPesquisadores.next() ) {
            	Pesquisador dados = new Pesquisador();
            	         	
            	dados.setId_pesq(rsExibirPesquisadores.getInt("id_pesq"));
            	dados.setNome_pesq(rsExibirPesquisadores.getString("nome_pesq"));
            	dados.setCpf_pesq(rsExibirPesquisadores.getString("cpf_pesq"));
            	dados.setEmail_pesq(rsExibirPesquisadores.getString("email_pesq"));
                                           
               Conteudo.add(dados);
            }
            rsExibirPesquisadores.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarPesquisadores::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

    }

}
