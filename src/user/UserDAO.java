package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public UserDAO() {
		
		try {
			String dbURL = "jdbc:mysql://54.180.62.87:3306/bbs";
			String dbID = "mysqluser";
			String dbPassword = "user1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "select userPassword from user where userID = ?";		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //login success
				}
				else
					return 0; // password matching failure
				
			}
			return -1; //no matching ID
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return -2; //db error
	}
	
	public int join(User user) {
		String SQL = "insert into user values(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return -1;
	}
}
