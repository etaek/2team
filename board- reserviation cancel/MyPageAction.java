package com.board.action;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.beans.bookboard;
import com.login.action.LoginAction;
import com.board.controller.CommandAction;
 
public class MyPageAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;    	
    	request.setCharacterEncoding("utf-8");
    	//�˻��ɼǰ� �˻����� �޾� ������ ����
    	String opt = request.getParameter("opt");
    	String condition = request.getParameter("condition");
    	
    	try {
    		HttpSession session = request.getSession();
    		//�α����� �Ǿ����� ������ �����˾��� �α���ȭ������ �̵�    		    		
    		/*String id = (String) session.getAttribute("id");    		
    		if(id == null){    			
    			return "loginerror.jsp";
    		}	*/	    		
    		
    		String jdbcDriver = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC";
    		           // +
    					//		"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "dhwldud7133";
    		String query = null; 
    		
    		
    		if(opt == null){    			
    			query = "select * from book order by count";
    		}else if(opt.equals("0")){    			
    			query = "select * from book where name like '%"+condition+"%' order by count";        		
    		}else if(opt.equals("1")){    			
    			query = "select * from book where startdate like '%"+condition+"%' order by count";        		
    		}else if(opt.equals("2")){    			
    			query = "select * from book where enddate like '%"+condition+"%' order by count";        		
    		}else if(opt.equals("3")){    			
    			query = "select * from book where room like '%"+condition+"%' order by count";        		
    		}else if(opt.equals("4")){    			
    			query = "select * from book where num like '%"+condition+"%' order by count";        		
    		}else if(opt.equals("5")){    			
    			query = "select * from book where id like '%"+condition+"%' order by count";        		
    		}
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		ArrayList<bookboard> articleList = new ArrayList<bookboard>();    		
    		
    		while(rs.next()){
    			bookboard article = new bookboard();
    			article.setCount(rs.getInt("count"));
    			article.setName(rs.getString("name"));
    			article.setStartdate(rs.getString("startdate"));
    			article.setEnddate(rs.getString("enddate"));
    			article.setRoom(rs.getString("room"));
    			article.setNum(rs.getInt("num"));
    			article.setId(rs.getString("id"));
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
 
        return "MyPage.jsp";
 
    }
 
}