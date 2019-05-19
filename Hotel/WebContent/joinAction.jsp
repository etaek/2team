<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="usrID"/>
<jsp:setProperty name="user" property="usrPassword"/>
<jsp:setProperty name="user" property="usrName"/>
<jsp:setProperty name="user" property="usrGender"/>
<jsp:setProperty name="user" property="usrEmail"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
</style>
<title>Login</title>
</head>

<body>
	<%
		if(user.getUserID()==null || user.getUserPassword()==null || user.getUserName()==null
		|| user.getUserGender()==null || user.getUserEmail()==null){
			PrintWriter script = response.getWriter();
		}
		else{
			UserDAO userDAO = new UserDAO();
			
			int result = userDAO.join(user);
		
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다..'')");
				script.println("history.back()");		//뒤로가기
				script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='main.jsp'");		//뒤로가기
				script.println("</script>");
			}
		}
				
		
		
	%>
</body>

</html>