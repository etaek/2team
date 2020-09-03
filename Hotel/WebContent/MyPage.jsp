<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    	<%@ page import="java.util.ArrayList" %>
    	 <%@ page import="com.board.beans.bookboard" %>
 <html>
<head>
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/bootstrap.min2.css">
		<link rel="stylesheet" href="css/bootstrap-grid.min.css">
		<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
		
		<style>
		

			
			#active{
				font-weight:bold;
			}
			
		</style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Hotel</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" >
      <li class="nav-item active">
        <a class="nav-link" href="main2.jsp">Main <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="mypage.do">예약 현황</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="list.do">후기 게시판</a>
      </li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<li><a class="nav-link" href="#" id="active">ID : ${sessionId}</a></li>
		<li><a class="nav-link" href="logout.jsp" id="active">Logout</a></li>
		<c:set var="stickid" value="${sessionId}"/>
	</ul>
     
     	

   
  </div>
</nav>
  
	<table class="table table-striped table-bordered table-hover">
		
		<tr>
		<th> </th>
			<th style="text-align:center">번호</th>
			<th style="text-align:center">호텔이름</th>
			<th style="text-align:center">체크인</th>
			<th style="text-align:center">체크아웃</th>
			<th style="text-align:center">룸이름</th>
			<th style="text-align:center">룸갯수</th>
		</tr>
			
			<c:forEach items="${articleList}" var="article">
		<tr>
			<c:if test="${article.id eq stickid}">
			<th style="width:50px;"><input type=button class="btn btn-danger" value="취소하기" OnClick="window.location='delete2.do?count=${article.count}'"></th>
			<th style="text-align:center">${article.count}</th>
			<th style="text-align:left"><a href="mypage.do?count=${article.count}">
			${article.name}</a></th>
			<th style="text-align:center">${article.startdate}</th>
			<th style="text-align:center">${article.enddate}</th>
			<th style="text-align:center">${article.room}</th>		
			<th style="text-align:center">${article.num}</th>
			</c:if>		
		</tr>
		</c:forEach>
		</table>
					
</body>
</html>