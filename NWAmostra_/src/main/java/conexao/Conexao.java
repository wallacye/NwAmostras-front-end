package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    public static Connection conexao() throws SQLException {
       
    	try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/nw_amostras_bd?serverTimezone=GMT", "root", "");
        }
        catch (ClassNotFoundException e) {
            System.out.println("erro "+e);
        }
        return null;
    } 
    
     
}
