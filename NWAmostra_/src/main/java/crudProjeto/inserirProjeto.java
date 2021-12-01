package crudProjeto;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.*;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;
import model.MapaDeAmostras;
import model.Pesquisador;
import model.Projeto;


@WebServlet(name = "inserirProjeto", urlPatterns = {"/inserirProjeto"})
public class inserirProjeto extends HttpServlet 
{
	
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException 
    {
    			PrintWriter out = response.getWriter();
                try {
                	
                	String nome_projeto = request.getParameter("txtNomeProjeto");
                	Integer privado_publico_projeto = Integer.parseInt(request.getParameter("txtVisibilidadeProjeto"));		
                	String pesquisadores = request.getParameter("txtAdicionarpesquisadorProjeto");			
                    java.sql.Date dt_inicio_projeto = new java.sql.Date(System.currentTimeMillis()); 
                    int id_projeto;
                    long id_para_converter = -1L;
                	Integer pesquisador_chefe = Integer.parseInt(request.getParameter("inputPesquisadorChefe"));		
                    
                    List<String> listaPesquisadores = Arrays.asList(pesquisadores.split(","));
                                        
                    Integer rodar = 0;
                    
                    Connection con = Conexao.Conectar();               
                    
            	    String sqlInserirProjeto = "INSERT INTO projeto (dt_termino_projeto, nome_projeto, dt_inicio_projeto, privado_publico_projeto, fk_pesquisador_chefe)"
                            + "VALUES (?, ?, ?, ?, ?)";
                    	    
                    	    PreparedStatement stInserirProjeto = con.prepareStatement(sqlInserirProjeto, Statement.RETURN_GENERATED_KEYS);
                    	    stInserirProjeto.setDate(1, null);
                    	    stInserirProjeto.setString(2, nome_projeto);
                    	    stInserirProjeto.setDate(3, dt_inicio_projeto);
                    	    stInserirProjeto.setInt(4, privado_publico_projeto);
                    	    stInserirProjeto.setInt(5, pesquisador_chefe);
                    	    stInserirProjeto.executeUpdate();

                        try (ResultSet generatedKeys = stInserirProjeto.getGeneratedKeys()) 
                        {
                            if (generatedKeys!=null && generatedKeys.next()) 
                            {
                                id_para_converter = generatedKeys.getLong(1);
                                id_projeto = Math.toIntExact(id_para_converter);
                                
                        	    while(rodar < listaPesquisadores.size()) 
                        	    {
                        	    	
                                    String sqlExibirPesquisadores = "SELECT * FROM pesquisador WHERE email_pesq= '" +listaPesquisadores.get(rodar)+ "'";
                                    
                                    Statement stExibirPesquisadores = con.createStatement();
                                    ResultSet rsExibirPesquisadores = stExibirPesquisadores.executeQuery(sqlExibirPesquisadores);
                                    
                                    if ( rsExibirPesquisadores.next() )
                                    {                             	         	
                                    	int id_pesq = rsExibirPesquisadores.getInt("id_pesq");
                                    	
                            	    	String sqlInserirProjeto_Pesquisador = "INSERT INTO projeto_pesquisador_participa (fk_id_projeto, fk_id_pequisador)"
                                                + " VALUES (?, ?) ";

                                        	    PreparedStatement stInserirProjeto_Pesquisador = con.prepareStatement(sqlInserirProjeto_Pesquisador);
                                        	    stInserirProjeto_Pesquisador.setInt(1, id_projeto);
                                        	    stInserirProjeto_Pesquisador.setInt(2, id_pesq);                                        	    
                                        	    stInserirProjeto_Pesquisador.executeUpdate();
                                    }
                            	    rodar++;                                    	
                        	    	
                        	    } 
                            }
                            else 
                            {
                                throw new SQLException("CRIAR PESQUISADOR_PROJETO::NENHUM ID FOI OBTIDO");
                            }                   	    
                    	    
                    	}
                    	    catch (SQLException ex)
                    	    {
                                out.print("Erro *parte de generated keys*: " + ex);
                    	    }
                	                                       
                       response.sendRedirect("./jsp/jspLogado/telaInicialProjetos.jsp");

                   } 
                       catch (SQLException ex) 
                       {
                            out.print("Erro na conexão, inserir projetoo: " + ex);
                       } 
                
    }

}
