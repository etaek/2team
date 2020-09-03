/**
 * ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ö±ï¿½ ï¿½ï¿½ï¿½ï¿½ Action
 */
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
import com.board.controller.CommandAction;
 
public class ListAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;    	

    	String opt = request.getParameter("opt");
    	String condition = request.getParameter("condition");
    	
    	try {
    		HttpSession session = request.getSession();
    		    		
    		String id = (String) session.getAttribute("sessionId");    		
    		
    		if(id == null){    			
    	    	System.out.println(1);
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC&useUnicode=true&characterEncoding = euc-kr";
    		           // +
    					//		"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "dmsxor12";
    		String query = null; 
    		
    		if(opt == null){    			
    			query = "select * from board order by num";
    		}else if(opt.equals("0")){   
    			System.out.println("È£ÅÚÀÌ¸§ °Ë»ö");
    			query = "select * from board where hotelName like '%"+condition+"%' ";        		
    		}else if(opt.equals("1")){    			
    			query = "select * from board where content like '%"+condition+"%' order by num";        		
    		}else if(opt.equals("2")){    			
    			query = "select * from board where id like '%"+condition+"%' order by num";        		
    		}
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		ArrayList<board> articleList = new ArrayList<board>();    		
    		
    		while(rs.next()){
    			board article = new board();
    			article.setNum(rs.getInt("num"));
    			article.setArea(rs.getString("area"));
    			article.setHotelName(rs.getString("hotelName"));
    			article.setContent(rs.getString("content"));
    			article.setId(rs.getString("id"));
    			article.setBoarddate(rs.getString("boarddate"));
    			article.setScore(rs.getString("score"));
    			articleList.add(article);
    		}
    		request.setAttribute("articleList",articleList);
    	
    	} catch(SQLException ex){
    		ex.printStackTrace();
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
 
        return "list.jsp";
 
    }
    
    
 
}