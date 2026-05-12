package lab6.com;

import java.sql.*;

public class UserDAO {
    private Connection conn;
    private int result = 0;

    public UserDAO() throws ClassNotFoundException{
        conn = UserDB.getConnection();
    }

    public int insertUser(User user){
        try {
            String sql = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getFname());
            pstmt.setString(4, user.getLname());
            result = pstmt.executeUpdate();

        }catch(SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    public User validateUser(String username, String password) throws SQLException {
        User validUser = null;
        String sql = "SELECT * FROM userprofile WHERE username = ? AND password = ?";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    validUser = new User();
                    validUser.setUsername(rs.getString("username"));
                    validUser.setFname(rs.getString("firstname"));
                    validUser.setLname(rs.getString("lastname"));
                }
            }
        }
        return validUser;
    }
}
