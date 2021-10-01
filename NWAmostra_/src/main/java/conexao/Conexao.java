package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    public static Connection conectar() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto2?serverTimezone=GMT", "root", "");
        }
        catch (ClassNotFoundException e) {
            System.out.println("erro "+e);
        }
        return null;
    }
	
}
