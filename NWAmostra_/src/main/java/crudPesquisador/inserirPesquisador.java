package crudPesquisador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import conexao.Conexao;
import senha.Senha;

@WebServlet("/inserirPesquisador")
public class inserirPesquisador extends HttpServlet {
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        
        try{
        	HttpSession session = request.getSession();
        	
            String nome_pesq = request.getParameter("nomePesqTxtLoginCad");
            String cpf_pesq = request.getParameter("cpfPesqTxtLoginCad");
            String email_pesq  = request.getParameter("emailPesqTxtLoginCad");
            String senha_pesq = request.getParameter("senhaPesqTxtLoginCad");
            String confirmar_senha_pesq = request.getParameter("confirmarSenhaPesqTxtLoginCad");
            Integer cargo = 1;
            Integer tema_claro_escuro = 1;
            
            String passMD5 = Senha.passMD5(senha_pesq);
            String passSHA512 = Senha.passSHA512(passMD5);
            
            Pattern p = Pattern.compile("[^A-Za-z0-9 ]");
            Matcher m = p.matcher(nome_pesq);
           // boolean b = m.matches();
            boolean b = m.find();
            
            if(b == true){
            	session.setAttribute("erro",1);
                response.sendRedirect("./jsp/cadastro.jsp");
            }else {
            
            String sqlInserirPesquisador = "INSERT INTO pesquisador (nome_pesq, cpf_pesq, email_pesq, senha_pesq, cargo, tema_claro_escuro) "
            + "VALUES (?, ?, ?, ?, ?, ?)";
            
            Connection con = Conexao.Conectar();
            PreparedStatement stInserirPesquisador = con.prepareStatement(sqlInserirPesquisador);
            stInserirPesquisador.setString(1, nome_pesq);
            stInserirPesquisador.setString(2, cpf_pesq);
            stInserirPesquisador.setString(3, email_pesq);
            stInserirPesquisador.setString(4, passSHA512);
            stInserirPesquisador.setInt(5, cargo);
            stInserirPesquisador.setInt(6, tema_claro_escuro);
            stInserirPesquisador.executeUpdate();
            response.sendRedirect("./jsp/login.jsp");}
        }
        catch(SQLException e){
            out.print("Erro na inserção de dados: " + e);
        } catch (NoSuchAlgorithmException ex) {   
            Logger.getLogger(inserirPesquisador.class.getName()).log(Level.SEVERE, null, ex);
        }
	}

}
