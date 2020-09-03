<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script> 
		function writeCheck()
		  {
		   var form = document.writeform;
		   
		  if( !form.subject.value )
		   {
		    alert( "제목을 적어주세요" );
		    form.subject.focus();
		    return;
		   }
		 
		  if( !form.content.value )
		   {
		    alert( "내용을 적어주세요" );
		    form.content.focus();
		    return;
		   }  
		 
		  form.submit();
		  }
 	</script>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  
	<title>게시판 수정</title>
	<style>
		#active{
			font-weight:bold;
		}
	</style>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type = "button" class="navbar-toggle collapsde" data-toggle="collapse"
			data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>	<!-- 짝대기 개수,, -->
				<span class="icon-bar"></span>				
			</button>
			<a class="navbar-brand" href="main.jsp">Hotel</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="list.do">게시판 홈</a></li>
			</ul>
		<ul class="nav navbar-nav navbar-right">

<li><a class="nav-link" href="#" id="active">ID : ${sessionId}</a></li>
		<li><a class="nav-link" href="logout.jsp" id="active">Logout</a></li>
	</ul>
		</div>
	</nav>
	
	<h3>게시글 수정</h3>
	<br>
  	<form id="inform" action ="modify.do" method="post">
  		<c:forEach items="${articleList}" var="article">
  			<input type="hidden" name="num" value="${article.num}">
		 <table style="text-align:center" class="table table-striped table-bordered table-hover">
			
			<tr>	
					<td>작성자</td>
					<td style="text-align:left">${article.id}</td>
				</tr>
				<tr>	
					<td>작성일자</td>
					<td style="text-align:left">${article.boarddate}</td>
				</tr>
				<tr>
					<td>여행지</td>
					<td style="text-align:left">${article.area}</td>
				</tr>
				<tr>
					<td>호텔 이름</td>
					<td style="text-align:left"><input type="text" name="hotelName" value="${article.hotelName}"></td>
				</tr>
				<tr>	
					<td>내용</td>
					<td style="text-align:left"><textarea name="content" rows="15" cols="120" placeholder="내용을 입력하세요">${article.content}</textarea></td>
				</tr>	
				<tr>
					<td></td>
					<td style="text-align:right">
						<input type=submit class="btn btn-warning" value="수정" Onclick="javascript:writeCheck();">
						<input type=button class="btn btn-secondary" value="취소" OnClick="window.location='content.do?num=${article.num}'">
					</td>
				</tr>	
			
		</table>
	</c:forEach>
	</form>
	
</body>
</html>