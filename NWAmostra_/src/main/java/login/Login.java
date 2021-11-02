package login;

import conexao.Conexao;
import senha.Senha;

import java.io.*;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try{
            Connection con = Conexao.Conectar();
            
            HttpSession session = request.getSession();
            
            String email = request.getParameter("loginEmail");
            String senha = request.getParameter("loginSenha");
            
            String passMD5 = Senha.passMD5(senha);
            String passSHA512 = Senha.passSHA512(passMD5);
                        
            String sqlLogin = "SELECT * FROM pesquisador WHERE email_pesq = '" + email + "' AND senha_pesq = '" + passSHA512 + "'";
            
            Statement stLogin = con.createStatement();
            ResultSet rsLogin = stLogin.executeQuery(sqlLogin);
            
            if(rsLogin.next()){
                session.setAttribute("erro",0);
                session.setAttribute("logado","TRUE");
                session.setAttribute("id",rsLogin.getString("id_pesq"));
                session.setAttribute("nome",rsLogin.getString("nome_pesq"));
                session.setAttribute("email",rsLogin.getString("email_pesq"));
                session.setAttribute("cpf",rsLogin.getString("cpf_pesq"));
                response.sendRedirect("./jsp/jspLogado/indexLogado.jsp");
            }
            else{
                session.setAttribute("erro",1);
                session.setAttribute("logado","FALSE");
                response.sendRedirect("./jsp/login.jsp");
            }      
        }
            catch(SQLException e){
                out.println("Erro na conexao: " + e);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
