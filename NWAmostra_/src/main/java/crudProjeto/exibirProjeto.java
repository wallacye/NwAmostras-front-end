package crudProjeto;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.Pesquisador;
import model.Projeto;

@WebServlet("/exibirProjeto")
public class exibirProjeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<Projeto> listar(Integer id_projeto){
    	
    	ArrayList<Projeto> Conteudo = new ArrayList<Projeto>();
    	
        try {
            String sqlExibirProjeto = "SELECT * FROM projeto WHERE inativacao_projeto IS NULL AND privado_publico_projeto = 1 ORDER BY nome_projeto";
            
            Connection con = Conexao.Conectar();
            Statement stExibirProjeto = con.createStatement();
            ResultSet rsExibirProjeto = stExibirProjeto.executeQuery(sqlExibirProjeto);
            if ( rsExibirProjeto.next() ) {
            	Projeto dados = new Projeto();
                dados.setId_projeto(rsExibirProjeto.getInt("id_projeto"));
                dados.setNome_projeto(rsExibirProjeto.getString("nome_projeto"));
                dados.setDt_termino_projeto("00/00/0000");
                dados.setPrivado_publico_projeto(rsExibirProjeto.getInt("privado_publico_projeto"));
                Integer id_pesquisador_chefe = rsExibirProjeto.getInt("fk_pesquisador_chefe");
                
                String sqlPesquisadorChefe = "SELECT nome_pesq FROM pesquisador WHERE id_pesq= " +id_pesquisador_chefe;
                
                Statement stPesquisadorChefe = con.createStatement();
                ResultSet rsPesquisadorChefe = stPesquisadorChefe.executeQuery(sqlPesquisadorChefe);
                if ( rsPesquisadorChefe.next() ) {
                	dados.setPesquisador_chefe(rsPesquisadorChefe.getString("nome_pesq"));
                }                
                
                Date dt_inicio_converter = rsExibirProjeto.getDate("dt_inicio_projeto");
                
                if(dt_inicio_converter != null) {
                java.util.Date utilDate = new java.util.Date(dt_inicio_converter.getTime());
                String DataInicioFormatada = new SimpleDateFormat("dd/MM/yyyy").format(utilDate);  

                dados.setDt_inicio_projeto(DataInicioFormatada);
                }
                else {
                    dados.setDt_inicio_projeto(null);
                }   
                Conteudo.add(dados);
            }
            rsExibirProjeto.close();
            con.close();
        } catch (Exception e) {
            System.out.println("listarProjeto::ERRO");
            System.out.println(e.getMessage());
        }
        return Conteudo;

    }
	public ArrayList<Pesquisador> listarIntegrantes(Integer id_projeto){
        
        ArrayList<Pesquisador> ConteudoIntegrantes = new ArrayList<Pesquisador>();
        
        try{
            String sqlIntegrantes = "SELECT id_pesq FROM projeto_pesquisador_participa "
            		+ "INNER JOIN pesquisador ON projeto_pesquisador_participa.fk_id_pequisador = pesquisador.id_pesq "
            		+ "WHERE fk_id_projeto= " +id_projeto;
            
            Connection con = Conexao.Conectar();
            Statement stExibirIntegrantes = con.createStatement();
            ResultSet rsExibirIntegrantes = stExibirIntegrantes.executeQuery(sqlIntegrantes);
            while ( rsExibirIntegrantes.next() ) {
            	
            	Pesquisador dadosIntegrantes = new Pesquisador();
              
            	dadosIntegrantes.setNome_pesq(rsExibirIntegrantes.getString("nome_pesq"));
            	dadosIntegrantes.setId_pesq(rsExibirIntegrantes.getInt("fk_id_pequisador"));
            	
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
