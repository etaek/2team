<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
 <html>
<head>
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>

<body>
     <div style="text-align:right">
		사용자ID : ${sessionId} <input type=button class="btn btn-info" value="로그아웃" >
		<c:set var="stickid" value="${sessionId}"/>
	</div> 
	<table class="table table-striped table-bordered table-hover">
		<caption style="text-align:center">게시판</caption>
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
			<th style="width:50px;"><input type=button class="btn btn-danger" value="취소하기" OnClick="window.location='delete.do?count=${article.count}'"></th>
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