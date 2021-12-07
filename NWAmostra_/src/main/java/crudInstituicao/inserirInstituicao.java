package crudInstituicao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

@WebServlet("/inserirInstituicao")
public class inserirInstituicao extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
        try{
        	String nome_lab = request.getParameter("txtNomeInstituicao");		
        	String cnpj_lab = request.getParameter("txtCNPJInstituicao");	
        	String telefone_lab = request.getParameter("txtTelefoneInstituicao");
        	Integer admin = Integer.parseInt(request.getParameter("inputAdministrador"));		
            int id_laboratorio;
            long id_para_converter = -1L;
        	
        	String rua_instituicao = request.getParameter("txtRuaAvenidaIntituicao");
        	String cep_instituicao = request.getParameter("txtCEPInstituicao");
        	String numero_instituicao = request.getParameter("txtNumeroIntituicao");
        	String bairro_instituicao = request.getParameter("txtBairroIntituicao");
        	String complemento_instituicao = request.getParameter("txtComplementoIntituicao");
        	String s = ",";
        	String endereco_instituicao = rua_instituicao +s+ cep_instituicao +s+ numero_instituicao +s+ bairro_instituicao +s+ complemento_instituicao;
        	
            String sqlInserirInstituicao = 
            "INSERT INTO laboratorio (telefone_lab, cnpj_lab, nome_lab, data_inativacao_lab, endereco_lab)"
            + " VALUES (?, ?, ?, ?, ?)";

            Connection con = Conexao.Conectar();
            PreparedStatement stInserirInstituicao = con.prepareStatement(sqlInserirInstituicao, Statement.RETURN_GENERATED_KEYS);
            stInserirInstituicao.setString(1, telefone_lab);
            stInserirInstituicao.setString(2, cnpj_lab);
            stInserirInstituicao.setString(3, nome_lab);
            stInserirInstituicao.setDate(4, null);
            stInserirInstituicao.setString(5, endereco_instituicao);
            stInserirInstituicao.executeUpdate();
            
            try (ResultSet generatedKeys = stInserirInstituicao.getGeneratedKeys()) 
            {
                if (generatedKeys!=null && generatedKeys.next()) 
                {
                    id_para_converter = generatedKeys.getLong(1);
                    id_laboratorio = Math.toIntExact(id_para_converter);
                    
            	    String sqlInserirLab_pesq_possui = "INSERT INTO lab_pesq_possui (id_lab, id_pesq, cargo)"
                            + "VALUES (?, ?, ?)";   
                    	    
                    	    PreparedStatement stInserirLab_pesq_possui = con.prepareStatement(sqlInserirLab_pesq_possui);
 
                    	    stInserirLab_pesq_possui.setInt(1, id_laboratorio);
                    	    stInserirLab_pesq_possui.setInt(2, admin);
                    	    stInserirLab_pesq_possui.setInt(3, 1);
                    	    stInserirLab_pesq_possui.executeUpdate();
                    	    
                    String sqlAlterarPesqIdlab = "UPDATE pesquisador SET id_lab = (?)";
                    PreparedStatement stAlterarPesqIdlab = con.prepareStatement(sqlAlterarPesqIdlab);
                    
                    stAlterarPesqIdlab.setInt(1, id_laboratorio);
                    stAlterarPesqIdlab.executeUpdate();
                                        	    	
                }
                else 
                {
                    throw new SQLException("CRIAR PESQUISADOR_LABORATORIO::NENHUM ID FOI OBTIDO");
                }   
        	}
    	    catch (SQLException ex)
    	    {
                out.print("Erro *parte de generated keys*: " + ex);
    	    }
    	    
            
            response.sendRedirect("./jsp/jspLogado/indexLogado.jsp");

        } catch (SQLException ex) {
            out.print("Erro na conexão: " + ex);
        } 
	}
}
