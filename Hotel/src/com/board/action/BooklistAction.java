package com.board.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class BooklistAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
       
       request.setCharacterEncoding("utf-8");
       System.out.println(1);
       //loginform�쑝濡� 遺��꽣 媛믪쓣 �엯�젰諛쏅뒗 遺�遺�       
      String name = request.getParameter("name");
       String startdate = request.getParameter("startdate");
       String enddate = request.getParameter("enddate");
       String room= request.getParameter("room");
       int num = Integer.parseInt(request.getParameter("num"));
       String id=request.getParameter("id");
       //mysql �뜲�씠�꽣踰좎씠�뒪�뿉 �젒�냽�븯�뒗 �겢�옒�뒪 �뱶�씪�씠踰� �꽑�뼵
       Class.forName("com.mysql.jdbc.Driver");
       System.out.println(1);
       //�뜲�씠�꽣 踰좎씠�뒪 �뿰寃� 愿��젴 蹂��닔 �꽑�뼵
       Connection conn = null;
       PreparedStatement pstmt = null;       
       
       System.out.println(1);
       try{

       String url = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC";         // 사용하려는 데이터베이스명을 포함한 URL 기술

       String dbUser = "root";
      String dbPass = "dmsxor12";                                             // 사용자 계정의 패스워드



       Class.forName("com.mysql.jdbc.Driver");                       // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.

       conn=DriverManager.getConnection(url,dbUser,dbPass);              // DriverManager 객체로부터 Connection 객체를 얻어온다.

       System.out.println("제대로 연결되었습니다.");                            // 커넥션이 제대로 연결되면 수행된다.



       }catch(Exception e){                                                    // 예외가 발생하면 예외 상황을 처리한다.

       e.printStackTrace();

       }


       try{       
           System.out.println(1);
          String jdbc_url = "jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC"; 
                 //+
               //         "useUnicode=true&characterEncoding = euc-kr";
         String dbUser = "root";
         String dbPass = "dmsxor12";
         HttpSession session = request.getSession();
          //�α����� �Ǿ����� ������ �����˾��� �α���ȭ������ �̵�                    
          
         //�뜲�씠�꽣踰좎씠�뒪�뿉 �뿰寃�
         conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
         System.out.println(2);
         //媛� ?�뿉 �빐�떦�븯�뒗 蹂��닔�뱾�쓣 �꽔�뼱以��떎.
            pstmt = conn.prepareStatement("insert into book values(NULL,?,?,?,?,?,?)");
            System.out.println(3);
                pstmt.setString(1, name);
                pstmt.setString(2, startdate);
                pstmt.setString(3, enddate);
                pstmt.setString(4, room);
                pstmt.setInt(5, num);
                pstmt.setString(6, id);
                System.out.println(4);
          // pstmt�뿉 ���옣�맂 荑쇰━ �떎�뻾
                pstmt.executeUpdate();
                System.out.println(5);
          //濡쒓렇�씤 愿��젴 �꽭�뀡 �꽑�뼵
          
          
          session.setAttribute("sessionId", id);
          System.out.println(5);
       } catch(SQLException ex){
          ex.printStackTrace();
         
      }finally{
         /*�뜲�씠�꽣 踰좎씠�뒪�뿉 �젒�냽�븯怨� �굹�꽌 �뜲�씠�꽣 踰좎씠�뒪 �뿰寃곗쓣 �걡�뼱以��떎
           �븞洹몃윺 寃쎌슦 �옄�썝�쓽 �궘鍮꾧� 諛쒖깮
         */
          if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
          if(conn != null) try{conn.close();} catch(SQLException ex){}
          }
       
 
        return "BookSuccess.jsp";
 
    }
 
}