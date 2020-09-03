
 <%@ page language="java" contentType="text/html; charset=euc_kr" pageEncoding="euc_kr"%>

<% request.setCharacterEncoding("euc-kr"); %>

    <%@ page import="com.board.beans.board" %>
	<%@ page import="java.util.ArrayList" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
 <html>
<head>
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="css/bootstrap.min2.css">
		<link rel="stylesheet" href="css/bootstrap-grid.min.css">
		<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
  

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  	#active{
			font-weight:bold;
		}
  </style>
</head>

<body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrap.bundle.min.js"></script>
	
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="main2.jsp">Hotel</a>
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
        <a class="nav-link" href="list.do">게시판 홈</a>
      </li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<li><a class="nav-link" href="#" id="active">ID : ${sessionId}</a></li>
		<li><a class="nav-link" href="logout.jsp" id="active">Logout</a></li>
	</ul>
     
     	
  </div>
</nav>

	<table class="table table-striped table-bordered table-hover">
		
		<tr>
			<th style="text-align:center">번호</th>
			<th style="text-align:center">여행지</th>
			<th style="text-align:center">호텔 이름</th>
			<th style="text-align:center">작성자</th>
			<th style="text-align:center">작성일자</th>
			<th style="text-align:center">조회수</th>
		</tr>
			
			<c:forEach items="${articleList}" var="article">
		<tr>
			<th style="text-align:center">${article.num}</th>
			<th style="text-align:center">${article.area}</th>
			<th style="text-align:left"><a href="content.do?num=${article.num}">
			${article.hotelName}</a></th>
			<th style="text-align:center">${article.id}</th>
			<th style="text-align:center">${article.boarddate}</th>
			<th style="text-align:center">${article.score}</th>			
		</tr>
		</c:forEach>
		</table>				
			<div style="text-align:right">
				<input type=button class="btn btn-success" value="작성하기" OnClick="window.location='writeform.jsp'">
			</div>
			<div id="searchForm" style="text-align:center">
				<form action ="list.do" method="post">
					<select name="opt">
						<option value="0">호텔이름</option>
						<option value="1">내용</option>
						<option value="2">작성자</option>
					</select>
					<input type="text" size="20" name="condition"/>
					<input class="btn btn-secondary" type="submit" value="검색"/>
				</form>
			</div>
			
			
</body>
</html>