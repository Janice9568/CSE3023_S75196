package lab6.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import lab6.com.Marathon;

public class Database {
    private static Connection conn = null;
    private static String jdbcURL="jdbc:mysql://localhost:3306/csa3203";
    private static String jdbcUsername="root";
    private static String jdbcPassword="admin";

    private int result = 0;

    public static Connection getConnection() throws ClassNotFoundException{

        if(conn != null){
            return conn;
        }else try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

        }catch(SQLException e){
            e.printStackTrace();
        }
        return conn;
    }

    public static void closeConnection() throws ClassNotFoundException{
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn = null; // CRITICAL: Reset connection to null so getConnection() works next time
        }
    }
}
