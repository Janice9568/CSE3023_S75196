package lab6.com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class UserDB {
    private static Connection conn = null;
    private static String jdbcURL = "jdbc:mysql://localhost:3306/csf3107";
    private static String jdbcUser = "root";
    private static String jdbcPassword = "admin";

    public static Connection getConnection() throws ClassNotFoundException{
        try {
            if (conn != null && !conn.isClosed()) {
                return conn;
            }
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);

        }catch(SQLException e){
            e.printStackTrace();
        }
        return conn;
    }

    public static void closeConnection() throws ClassNotFoundException{
        try{
            if(conn != null && !conn.isClosed()){
                conn.close();
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            conn = null;
        }
    }
}
