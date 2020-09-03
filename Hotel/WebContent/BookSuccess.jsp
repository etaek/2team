<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="book" class="com.board.action.BooklistAction"/>
<jsp:setProperty name="book" property="*"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	
	
</script>
</head>
<body>
<script>
self.window.alert("예약되었습니다.");
	location.href="mypage.do"; 
   
</script>
</body>
</html>