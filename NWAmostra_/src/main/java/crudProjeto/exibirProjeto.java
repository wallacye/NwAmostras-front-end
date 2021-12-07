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
import model.AmostraNoProjeto;
import model.Campo;
import model.Informacao;
import model.Pesquisador;
import model.Projeto;

@WebServlet("/exibirProjeto")
public class exibirProjeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrayList<Projeto> listar(Integer id_projeto){
    	
    	ArrayList<Projeto> Conteudo = new ArrayList<Projeto>();
    	
        try {
            String sqlExibirProjeto = "SELECT * FROM projeto "
            		+ "WHERE inativacao_projeto IS NULL "
            		+ "AND privado_publico_projeto = 1 "
            		+ "AND id_projeto= "+ id_projeto
            		+ " ORDER BY nome_projeto";
            
            Connection con = Conexao.Conectar();
            Statement stExibirProjeto = con.createStatement();
            ResultSet rsExibirProjeto = stExibirProjeto.executeQuery(sqlExibirProjeto);
            if ( rsExibirProjeto.next() ) {
            	Projeto dados = new Projeto();
                dados.setId_projeto(rsExibirProjeto.getInt("id_projeto"));
                dados.setNome_projeto(rsExibirProjeto.getString("nome_projeto"));
                dados.setDt_termino_projeto("00/00/0000");
                dados.setPrivado_publico_projeto(rsExibirProjeto.getInt("privado_publico_projeto"));
                dados.setColunas_projeto(rsExibirProjeto.getInt("colunas_projeto"));
                dados.setLinhas_projeto(rsExibirProjeto.getInt("linhas_projeto"));
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
            String sqlIntegrantes = "SELECT * FROM projeto_pesquisador_participa "
            		+ "INNER JOIN pesquisador ON projeto_pesquisador_participa.fk_id_pequisador = pesquisador.id_pesq "
            		+ "WHERE projeto_pesquisador_participa.fk_id_projeto= " +id_projeto;
            
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

	public ArrayList<Campo> listarCampos(Integer id_projeto){
        
        ArrayList<Campo> ConteudoCampos = new ArrayList<Campo>();
        
        try{
            String sqlCampos = "SELECT * FROM campo "
            		+ "WHERE id_projeto= " +id_projeto;
            
            Connection con = Conexao.Conectar();
            Statement stExibirCampos = con.createStatement();
            ResultSet rsExibirCampos = stExibirCampos.executeQuery(sqlCampos);
            while ( rsExibirCampos.next() ) {
            	
            	Campo dadosCampos = new Campo();
              
            	dadosCampos.setNome_campo(rsExibirCampos.getString("nome_campo"));
            	dadosCampos.setId_campo(rsExibirCampos.getInt("id_campo"));
            	dadosCampos.setColuna_campo(rsExibirCampos.getInt("coluna_campo"));
            	
            	ConteudoCampos.add(dadosCampos);
            }
            rsExibirCampos.close();
            con.close();
            
            return ConteudoCampos;
        }
        catch(Exception e){
            System.out.print("ERRO EXIBIR CAMPOS: ");
            System.out.print(e.getMessage());
        }
        return null;
    }
	
	public ArrayList<AmostraNoProjeto> listarAmostras(Integer id_projeto){
        
        ArrayList<AmostraNoProjeto> ConteudoAmostras = new ArrayList<AmostraNoProjeto>();
        
        try{
            String sqlAmostras = "SELECT * FROM amostra_projeto_contem "
            		+ "INNER JOIN amostra ON amostra_projeto_contem.id_amostra = amostra.id_amostra "
            		+ "WHERE id_projeto= " +id_projeto;
            
            Connection con = Conexao.Conectar();
            Statement stExibirAmostras = con.createStatement();
            ResultSet rsExibirAmostras = stExibirAmostras.executeQuery(sqlAmostras);
            while ( rsExibirAmostras.next() ) {
            	
            	AmostraNoProjeto dadosAmostras = new AmostraNoProjeto();
              
            	dadosAmostras.setLinha_amostra(rsExibirAmostras.getInt("linha_amostra"));
            	dadosAmostras.setNome_amostra(rsExibirAmostras.getString("nome_amostra"));
            	dadosAmostras.setCodigo_amostra(rsExibirAmostras.getString("codigo_amostra"));;
            	
            	ConteudoAmostras.add(dadosAmostras);
            }
            rsExibirAmostras.close();
            con.close();
            
            return ConteudoAmostras;
        }
        catch(Exception e){
            System.out.print("ERRO EXIBIR AMOSTRAS: ");
            System.out.print(e.getMessage());
        }
        return null;
    }
	
	public ArrayList<Informacao> listarInformacoes(Integer id_projeto){
        
        ArrayList<Informacao> ConteudoInformacoes = new ArrayList<Informacao>();
        
        try{
            String sqlInformacoes = "SELECT * FROM informacao "
            		+ "INNER JOIN campo ON campo.id_campo = informacao.id_campo "
            		+ "INNER JOIN amostra_projeto_contem ON amostra_projeto_contem.id_amostra_projeto = informacao.id_amostra_projeto "
            		+ "WHERE informacao.id_projeto= "+id_projeto;
            
            Connection con = Conexao.Conectar();
            Statement stExibirInformacoes = con.createStatement();
            ResultSet rsExibirInformacoes = stExibirInformacoes.executeQuery(sqlInformacoes);
            while ( rsExibirInformacoes.next() ) {
            	
            	Informacao dadosInformacoes = new Informacao();
              
            	dadosInformacoes.setLinha_amostra(rsExibirInformacoes.getInt("linha_amostra"));
            	dadosInformacoes.setColuna_campo(rsExibirInformacoes.getInt("coluna_campo"));
            	dadosInformacoes.setConteudo_informacao(rsExibirInformacoes.getString("conteudo_informacao"));
            	dadosInformacoes.setId_informacao(rsExibirInformacoes.getInt("id_informacao"));
            	
            	ConteudoInformacoes.add(dadosInformacoes);
            }
            rsExibirInformacoes.close();
            con.close();
            
            return ConteudoInformacoes;
        }
        catch(Exception e){
            System.out.print("ERRO EXIBIR INFORMACOES: ");
            System.out.print(e.getMessage());
        }
        return null;
    }
}
