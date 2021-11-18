package conexao;

import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "Conexao", urlPatterns = {"/Conexao"})
public class Conexao {

    public static Connection Conectar() throws SQLException {
    	try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/nw_amostras_bd?serverTimezone=GMT-3", "root", "");
        }
        catch (ClassNotFoundException e) {
            System.out.println("erro "+e);
        }
        return null;
    } 
}