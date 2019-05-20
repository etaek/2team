/**
 * 占쎈쐻占쎈뼢繹먮씮�굲占쎈쐻占쎈짗占쎌굲 占쎌넅占쎈쐻占쎈쓡占쎈퓠占쎈쐻占쎈짗占쎌굲 ID占쎈쐻占쎈짗占쎌굲 PW 占쎈쐻占쎈셾占쎌젾占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈츉占쎈쐻�뜝占� Action
 */
package com.login.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;

public class LoginAction implements CommandAction{

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		
		//占쎈쐻占쎈셾占쎌젾獄�袁⑹굲占쎈쐻占쎈짗占쎌굲 id占쎈쐻占쎈짗占쎌굲 pw占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
		String id = request.getParameter("id");
    	String password = request.getParameter("password");    	
    	    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	HttpSession session = request.getSession();
    	Connection conn = null;    	
    	Statement stmt = null;
    	ResultSet rs = null;
    	
    	try{
    	
    		String jdbcDriver = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC";
    		         //+
					 //			"useUnicode=true&characterEncoding = euc-kr";
			String dbUser = "root";
			String dbPass = "dmsxor12";
			
			//占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼟�뇡�빘�굲占쎈쐻占쎈뼓占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);			
			stmt = conn.createStatement();
			
			//id占쎈쐻占쎈짗占쎌굲 pw占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈뱟占쎈솇占쎌굲 db 占쎈쐻占쎈뼑占쎄땔占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
			String query = "select * from user where id = '"+id+"' and password = '"+password+"';";					
			//占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼣占쎌뒻占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲			
			rs = stmt.executeQuery(query);
			
			//占쎈쐻占쎈뼢繹먮씮�굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
			Boolean isLogin = false;
		
			//占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈뼑占쎄땔占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 true
			while(rs.next()){
				isLogin = true;
			}		
		
			//占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈뼑占쎄땔占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈뼄筌뤿슣�굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼄占쎌뒻占쎌굲 id 占쎈쐻占쎈솯�ⓦ끉�굲
			if(isLogin){	
				session.setAttribute("sessionId", id);
			//占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈뼑占쎄땔占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈뼍占쎈쿈占쎌굲 占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈뼑占쎈섣占쎌굲 占쎌깈占쎈쐻占쎈짗占쎌굲
			}else if(!isLogin && id != null){
				return "loginerror2.jsp";
			}
    	} catch(SQLException ex){
    		ex.printStackTrace();

    	}finally{
    		//占쎈쐻占쎈솓占쎌뒻占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
    		if(stmt != null) try{stmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		}    	       	
    	return "LoginSuccess.jsp";
	}
	
}
