<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<title>결제 화면</title>
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
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top : 20px;">
				<form method="post" action="payCommand.do">
					<h3 style="text-align : center;">결제확인</h3>
					
					<br><br><br>
					<div class="form=group" style = "text-align : left;">
						회원 ??? 님<br><br>
						???￦ 입니다.
					</div>
					
					
					<br><br><br>
					<div class="form-group" style = "text-align : center;">
						<div class="btn-group" data-toggle="buttons" id="payType">
							<label class="btn btn-primary active">
								<input type="radio" name="payType" autocomplete="off" value="1" checked>무통장입금	
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="payType" autocomplete="off" value="2" checked>카카오페이
							</label>
						</div>		
					</div>
					<input type="submit" class="btn btn-primary form-control" value="결제확인">
				</form> 
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>

</body>
</html>