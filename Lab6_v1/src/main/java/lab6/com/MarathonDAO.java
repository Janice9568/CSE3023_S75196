package lab6.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import lab6.com.Database;

public class MarathonDAO {
    private Connection conn;
    private int result = 0;

    public MarathonDAO() throws ClassNotFoundException{
        conn = Database.getConnection();
    }

    public int addDetails(Marathon marathon){
        try{
            String sql = "INSERT INTO Marathon(icNo, name, category) VALUES (?, ?, ?) ";
            PreparedStatement pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, marathon.getIcno());
            pstmt.setString(2, marathon.getName());
            pstmt.setString(3, marathon.getCategory());

            result = pstmt.executeUpdate();

        }catch(SQLException e){
            e.printStackTrace();
        }
        return result;
    }
}
