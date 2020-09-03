/**
 * ����Ʈ�� �����ֱ� ���� Action
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
 
public class MoveAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;    	
    	
    	//�˻��ɼǰ� �˻����� �޾� ������ ����
    	String opt = request.getParameter("opt");
    	String condition = request.getParameter("condition");
    	System.out.println(opt);
    		
    		if(opt.equals("seoul")){    			
    			
    		    return "Seoul.jsp";
    		}else if(opt.equals("daejon")){   
    		
    			 return "Daejeon.jsp";
    		}else if(opt.equals("busan")){    			
    			 return "Busan.jsp";        		
    		}else if(opt.equals("daegu")){    			
    			 return "daegu.jsp";      		
    		}
    		else if(opt.equals("jeju")){    			
    			 return "Jeju.jsp";       		
    		}
    		return "main2.jsp";
    }
    
 
}