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
import model.Projeto;

@WebServlet("/exibirProjetos")
public class exibirProjetos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<Projeto> listar(Integer filtro, Integer id_lab){
    	
    	ArrayList<Projeto> Conteudo = new ArrayList<Projeto>(filtro);
    	
        try {
        	
        	String orderBy = "A";
        	
        	if (filtro == 1)
        	{
        		orderBy = " ORDER BY id_projeto DESC";
        	}
        	if (filtro == 2)
        	{
        		orderBy = " ORDER BY id_projeto ASC ";
        	}
        	if (filtro == 3)
        	{
        		orderBy = " ORDER BY nome_projeto ";
        	}
        	if (filtro == 4)
        	{
        		orderBy = " ORDER BY nome_pesq ";
        	}
        	
            String sqlExibirProjeto = "SELECT * FROM projeto "
            		+ "INNER JOIN pesquisador ON projeto.fk_pesquisador_chefe = pesquisador.id_pesq "
            		+ "WHERE inativacao_projeto IS NULL AND privado_publico_projeto = 1 "
            		+ "AND projeto.id_lab = " + id_lab
            		+ orderBy;
            
            Connection con = Conexao.Conectar();
            Statement stExibirProjeto = con.createStatement();
            ResultSet rsExibirProjeto = stExibirProjeto.executeQuery(sqlExibirProjeto);
            while ( rsExibirProjeto.next() ) {
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

}
