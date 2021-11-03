package crudAmostra;

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

@WebServlet("/inserirOrigem")
public class inserirOrigem extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
        try{
        	String nome_origem = request.getParameter("idTxtNomeInstituicaoOrigem");		
        	String cep_origem = request.getParameter("idTxtCepCriarAmostra");	
        	String rua_origem = request.getParameter("idTxtRuaCriarAmostra");	
        	String bairro_origem = request.getParameter("idTxtBairroCriarAmostra");
        	String numero_origem = request.getParameter("idTxtNumeroOrigem");	
        	String complemento_origem = request.getParameter("idTxtComplementoOrigem");        	
        	String endereco_origem = cep_origem + rua_origem + bairro_origem + numero_origem + complemento_origem;
        	
            String sqlInserirOrigem = 
            "INSERT INTO origem (endereco_origem, nome_origem)"
            + " VALUES (?, ?)";

            Connection con = Conexao.Conectar();
            PreparedStatement stInserirOrigem = con.prepareStatement(sqlInserirOrigem);
            stInserirOrigem.setString(1, endereco_origem);
            stInserirOrigem.setString(2, nome_origem);
            stInserirOrigem.executeUpdate();
            
            response.sendRedirect("./jsp/jspLogado/telaInicialMapaAmostras.jsp");

        } catch (SQLException ex) {
            out.print("Erro na conexão: " + ex);
        } 

	}

}
