package com.board.action;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.beans.board;
import com.board.beans.bookboard;
import com.board.controller.CommandAction;
 
public class MyPageDeleteAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("euc-kr");
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC"; 
    	String dbUser = "root";
    	String dbPass = "dhwldud7133";
    	int count = Integer.parseInt(request.getParameter("count"));
    	Statement stmt = null;
    	PreparedStatement pstmt=null;
    	Connection conn = null;
    	ResultSet rs = null;
    	try{
    		HttpSession session = request.getSession();
     		
    		conn = DriverManager.getConnection(url,dbUser,dbPass);
    		stmt = conn.createStatement();
    			String sql = "DELETE FROM book WHERE count = ?";
    			pstmt=conn.prepareStatement(sql);
    			pstmt.setInt(1,count);
    			pstmt.executeUpdate();
    			System.out.println("1");
    			pstmt.close();
    			stmt.close();
    			conn.close();
    			
    	 	} catch(SQLException e) {
    			
    		} finally{        		
        		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}        		
        		if(conn != null) try{conn.close();} catch(SQLException ex) {}
        	}

    	
 
        return "MyPageDelete.jsp";
 
    }
 
}
