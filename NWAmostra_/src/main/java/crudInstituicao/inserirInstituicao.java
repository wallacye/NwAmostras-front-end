package crudInstituicao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
        	String rua_instituicao = request.getParameter("txtRuaAvenidaIntituicao");
        	String cep_instituicao = request.getParameter("txtCEPInstituicao");
        	String numero_instituicao = request.getParameter("txtNumeroIntituicao");
        	String bairro_instituicao = request.getParameter("txtBairroIntituicao");
        	String complemento_instituicao = request.getParameter("txtComplementoIntituicao");
        	String s = ",";
        	String endereco_instituicao = rua_instituicao +s+ cep_instituicao +s+ numero_instituicao +s+ bairro_instituicao +s+ complemento_instituicao;
        	
            String sqlInserirInstituicao = 
            "INSERT INTO mapa_de_amostras (telefone_lab, cnpj_lab, nome_lab, data_inativacao_lab, endereco_lab)"
            + " VALUES (?, ?, ?, ?, ?)";

            Connection con = Conexao.Conectar();
            PreparedStatement stInserirInstituicao = con.prepareStatement(sqlInserirInstituicao);
            stInserirInstituicao.setString(1, telefone_lab);
            stInserirInstituicao.setString(2, cnpj_lab);
            stInserirInstituicao.setString(3, nome_lab);
            stInserirInstituicao.setDate(4, null);
            stInserirInstituicao.setString(5, endereco_instituicao);
            stInserirInstituicao.executeUpdate();
            
            response.sendRedirect("./jsp/jspLogado/telaInicialMapaAmostras.jsp");

        } catch (SQLException ex) {
            out.print("Erro na conexão: " + ex);
        } 
	}
}
