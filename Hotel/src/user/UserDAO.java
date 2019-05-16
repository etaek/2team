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
			String dbURL= "jdbc:mysql://localhost:3306/Hotel";	//localhost:3306 -> 컴퓨터에 설치된 mysql서버자체, Hotel이라는 db에접속
			String dbID = "root";
			String dbPassword = ""; //root계정 비밀번호 넣기
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그인 성공
				}
				else
					return 0; //비밀번호가 틀림.
			}
			return -1; //아이디가 없음.
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	//데이터베이스 오류
	}
	
	public int join (User user) {
		String SQL = "INSERT INTO USER VALUES(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(1, user.getUserPassword());
			pstmt.setString(1, user.getUserName());
			pstmt.setString(1, user.getUserGender());
			pstmt.setString(1, user.getUserEmail());
			
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;	//데이터베이스 오류
	}
}
