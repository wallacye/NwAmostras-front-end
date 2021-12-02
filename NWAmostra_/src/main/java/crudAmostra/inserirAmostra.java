package crudAmostra;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.*;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;


@WebServlet(name = "inserirAmostra", urlPatterns = {"/inserirAmostra"})
public class inserirAmostra extends HttpServlet {
	
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
    			PrintWriter out = response.getWriter();
                try {
                	
                	String codigo_amostra = request.getParameter("txtCodigoAmostra");
                	String nome_amostra = request.getParameter("txtNomeAmostra");		
                	String coletador_amostra = request.getParameter("txtColetadorAmostra");						
                	String anotacoes_amostra = request.getParameter("txtAnotacoesAmostra");
                	String tipo_amostra = request.getParameter("txtTipoAmostra");
                	Integer id_categoria = Integer.parseInt(request.getParameter("txtCategoriaAmostra"));
                	Integer id_origem = Integer.parseInt(request.getParameter("txtIdOrigem"));
                	
                	String txtDataColetaAmostra = request.getParameter("txtDataColetaAmostra");
                	String txtDataValidadeAmostra = request.getParameter("txtDataValidadeAmostra");
                	
                	Integer id_mapa_amostra = Integer.parseInt(request.getParameter("inputMapaDeAmostras"));
                	Integer n_coluna_amostra = Integer.parseInt(request.getParameter("inputColunaAmostra"));
                	Integer n_linha_amostra = Integer.parseInt(request.getParameter("inputLinhaAmostra"));
                	Double volume_amostra = Double.parseDouble(request.getParameter("txtVolumeAmostra"));
                	String hora_coleta_amostra = request.getParameter("txtHoraColetaAmostra");
                	Date UTILdt_coleta_amostra = null;
                	java.sql.Date dt_coleta_amostra;
                	Date UTILvalidade_amostra = null;
                	java.sql.Date validade_amostra;
                    int id_amostra;
                    long id_para_converter = -1L;

                	
                	DateFormat df = new SimpleDateFormat ("yyyy-MM-dd");
                	df.setLenient (false); 

                	
                	try {
						UTILdt_coleta_amostra = df.parse (txtDataColetaAmostra);
					} catch (ParseException e) {
	                    out.print("ERRO CONVERS√O DATA COLETA AMOSTRA" + e);
					}
                	dt_coleta_amostra = new java.sql.Date(UTILdt_coleta_amostra.getTime());
                	
               	
                	try {
						UTILvalidade_amostra = df.parse (txtDataValidadeAmostra);
					} catch (ParseException e) {
	                    out.print("ERRO CONVERS√O DATA VALIDADE AMOSTRA" + e);
					}
                	validade_amostra = new java.sql.Date(UTILvalidade_amostra.getTime());

                	
                    String sqlInserirAmostra = "INSERT INTO amostra (coletador_amostra, anotacoes_amostra, tipo_amostra, id_categoria, id_origem, data_inativacao_amostra, nome_amostra, codigo_amostra)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?) ";

                    Connection con = Conexao.Conectar();
            	    PreparedStatement stInserirAmostra = con.prepareStatement(sqlInserirAmostra, Statement.RETURN_GENERATED_KEYS);
            	    stInserirAmostra.setString(1, coletador_amostra);
            	    stInserirAmostra.setString(2, anotacoes_amostra);
            	    stInserirAmostra.setString(3, tipo_amostra);
            	    stInserirAmostra.setInt(4, id_categoria);
            	    stInserirAmostra.setInt(5, id_origem);
            	    stInserirAmostra.setDate(6, null);
            	    stInserirAmostra.setString(7, nome_amostra);
            	    stInserirAmostra.setString(8, codigo_amostra);
            	    
            	    stInserirAmostra.executeUpdate();
			
                    try (ResultSet generatedKeys = stInserirAmostra.getGeneratedKeys()) 
                    {
                        if (generatedKeys!=null && generatedKeys.next()) 
                        {
                            id_para_converter = generatedKeys.getLong(1);
                            id_amostra = Math.toIntExact(id_para_converter);
                            
                    	    String sqlInserirAmostraNoMapaContem = "INSERT INTO amostra_no_mapa_contem (n_coluna_amostra, n_linha_amostra, validade_amostra, dt_coleta_amostra, volume_amostra, hora_coleta_amostra, id_amostra, id_mapa_amostra, fase_coleta)"
                                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";       	    
                            	    
                            	    
                            	    PreparedStatement stInserirAmostraNoMapaContem = con.prepareStatement(sqlInserirAmostraNoMapaContem);
                            	    
                            	    stInserirAmostraNoMapaContem.setInt(1, n_coluna_amostra);
                            	    stInserirAmostraNoMapaContem.setInt(2, n_linha_amostra);
                            	    stInserirAmostraNoMapaContem.setDate(3, validade_amostra);
                            	    stInserirAmostraNoMapaContem.setDate(4, dt_coleta_amostra);
                            	    stInserirAmostraNoMapaContem.setDouble(5, volume_amostra);
                            	    stInserirAmostraNoMapaContem.setString(6, hora_coleta_amostra);
                            	    stInserirAmostraNoMapaContem.setInt(7, id_amostra);
                            	    stInserirAmostraNoMapaContem.setInt(8, id_mapa_amostra);
                            	    stInserirAmostraNoMapaContem.setString(9, "");
                            	    stInserirAmostraNoMapaContem.executeUpdate();
                                                	    	
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
            	    
                    response.sendRedirect("./jsp/jspLogado/mapaAmostras.jsp?id_mapa_amostra=" + id_mapa_amostra);

                } catch (SQLException ex) {
                    out.print("Erro na conex√£o, inserir amostra: " + ex);
                } 
	}

}
