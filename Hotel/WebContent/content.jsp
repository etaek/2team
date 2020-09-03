<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
       <%@ page import="com.board.beans.board" %>
	<%@ page import="java.util.ArrayList" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
 <html>
<head>

<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  #active{
			font-weight:bold;
		}
  	#div1{
  		height:20px;
  		width: 10%;
  		border : 1px solid black;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  -ms-border-radius: 10px;
  -o-border-radius: 10px;
  border-radius: 10px;
  padding: 5px 40px 20px;
  position: relative;
  	}
  	#div{
  		height:500px;
  		width: 100%;
  		border : 1px solid black;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  -ms-border-radius: 10px;
  -o-border-radius: 10px;
  border-radius: 10px;
  padding: 5px 40px 20px;
  position: relative;
  	}
  	#p{
  		padding:20px;
  		font-size:20px;
  	}
  	
  	#h5{
  		margin-left:800px;
  	}

  </style>
  <script >
$(document).ready(function(){ 
    $('selector').css('width', $(window).width()); 
    $('selector').css('height', $(window).height()); 
    $(window).resize(function() { 
        $('selector').css('width', $(window).width()); 
        $('selector').css('height', $(window).height()); 
    }); 
});
</script>
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
				<li><a href="mypage.do">예약 현황</a></li>
				<li><a href="list.do">게시판 홈</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
					<li><a class="nav-link" href="#" id="active">ID : ${sessionId}</a></li>
		<li><a class="nav-link" href="logout.jsp" id="active">Logout</a></li>	
			</ul>
		</div>
	</nav>

	<c:forEach items="${articleList}" var="article">
		<input type="hidden" name="num" value="${article.num}">
	<h3>${article.area} / ${article.hotelName}</h3> 

	<hr>


		 <table style="text-align:center" class="table table-bordered ">
			
			<tr>
				<th colspan="2">${sessionId} &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;${article.boarddate}&emsp;/
				&emsp;조회수 : ${article.score}</th>
				
			</tr>

			<tr>	
				<th colspan="2">
					<div id="div">
						<p id="p">${article.content}</p>
					</div>
				</th>
		
			</tr>	
			
		</table>

	<div style="text-align:right">
		<c:set var="id" value="${sessionId}" />
		<c:set var="id2" value="${article.id}" />
		<c:if test="${id eq id2}">
		<input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='delete.do?num=${article.num}'">
		<input type=button class="btn btn-warning" value="수정하기" OnClick="window.location='modifyform.do?num=${article.num}'">
		</c:if>			
		<input type=button class="btn btn-secondary" value="돌아가기" OnClick="window.location='list.do'">
	</div>
	
	</c:forEach>		
</body>
</html>