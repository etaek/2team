/**
 * �Խ��� ������ �����ִ� Action
 */
package com.board.action;
 
import java.sql.*;
import java.util.ArrayList;
 


import javax.servlet.http.HttpServletRequest;
 
import javax.servlet.http.HttpServletResponse;
 
import javax.servlet.http.HttpSession;

import com.board.beans.board;
 
import com.board.controller.CommandAction;
 
public class ContentAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	System.out.println("����");
    	Class.forName("com.mysql.jdbc.Driver");
    	//��ȣ�� �Է¹޾ƿ� ������ ����
    	int num = Integer.parseInt(request.getParameter("num"));
    	Connection conn = null;
    	Statement stmt = null;    	
    	ResultSet rs = null;   
  
    	System.out.println("1");
    	//��ȸ�� ������ ���� ���� ����
    	int score = 0;
    	
    	try {
    		//���� Ȯ���� �α��λ��°� �ƴϸ� �α���â ȣ��
    		HttpSession session = request.getSession();
    		String id = (String) session.getAttribute("sessionId");
    		if(id == null){    			
    	    	
    			return "loginerror.jsp";
    		}
    		System.out.println("2");
    		String jdbcDriver = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC";
    		
    			//	+
    			//				"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "dmsxor12";
    		
    		String query = "select * from board where num = "+num;
    		
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		System.out.println("3");
    	
    		//��ȸ�� ����Ʈ�� �޾ƿ�
    		ArrayList<board> articleList = new ArrayList<board>();
    		
    		while(rs.next()){
    			System.out.println("4");
    			board article = new board();
    			article.setNum(rs.getInt("num"));    			
    			article.setArea(rs.getString("area"));
    			article.setHotelName(rs.getString("hotelName"));
    			article.setContent(rs.getString("content"));
    			article.setId(rs.getString("id"));
    			article.setBoarddate(rs.getString("boarddate"));
    			score = Integer.parseInt(rs.getString("score")) + 1;
    			article.setScore(String.valueOf(score));
    			
    			articleList.add(article);
    		}
    		request.setAttribute("articleList",articleList);
    		
    		//��ȸ�� ������Ʈ
    		String query2 =  "UPDATE board SET score='" + score +    						
					"' WHERE num=" + num;    		
    		stmt.executeUpdate(query2); 
    		
    	} catch(SQLException ex){
    		ex.printStackTrace();
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
 
        return "content.jsp";
 
    }
 
}