/**
 * 疫뀐옙占쎌뱽 占쎌삂占쎄쉐 占쎈릭�⑨옙 占쎈쑓占쎌뵠占쎄숲甕곗쥙�뵠占쎈뮞占쎈퓠 占쎄퐫占쎈뮉 Action
 */
package com.board.action;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class WriteAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("euc-kr");
    	//占쎌젫筌뤴뫕�궢 占쎄땀占쎌뒠占쎌뱽 占쎌뿯占쎌젾 獄쏆룇釉� 癰귨옙占쎈땾占쎈퓠 占쏙옙占쎌삢
    	String num=request.getParameter("num");
    	
    	String area = request.getParameter("area");
    	
    	String content = request.getParameter("content");
    	String hotelName = request.getParameter("hotelName");
    	
    	String id = null;
    	Class.forName("com.mysql.cj.jdbc.Driver");
    
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	
    	try{
    		HttpSession session = request.getSession();
  
    		//占쎄쉭占쎈�∽옙�뱽 占쎌뵭占쎈선 嚥≪뮄�젃占쎌뵥 占쎄맒占쎄묶揶쏉옙 占쎈툡占쎈빍筌롳옙 嚥≪뮄�젃占쎌뵥 筌≪럩�몵嚥∽옙 占쎌뵠占쎈짗
        	id = (String) session.getAttribute("sessionId");
        	
    		if( id == null){
    			return "loginerror.jsp";
    		}
 
    				
    		String jdbcDriver = "jdbc:mysql://localhost:3306/hotel?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
    		          // +
						//		"useUnicode=true&characterEncoding = euc-kr";
			String dbUser = "root";
			String dbPass = "dmsxor12";
		

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

		  
      		pstmt = conn.prepareStatement("insert into board values(NULL,?,?,?,?,now(),0)");
      				
    				pstmt.setString(1, id);
    				pstmt.setString(2, area);
    				pstmt.setString(3, hotelName);
    				pstmt.setString(4, content);
    				
    				//�뜎�눖�봺 占쎈뼄占쎈뻬
    				pstmt.executeUpdate();
    			  	System.out.println(5);
    		
    	} catch(SQLException ex){
    		ex.printStackTrace();
			
		}finally{
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
 
        return "write.jsp";
 
    }
 
}