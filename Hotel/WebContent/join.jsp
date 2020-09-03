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

<style>
	

</style>
<title>Login</title>
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
				<li><a href="list.jsp">후기 게시판</a></li>
			</ul>
		<ul class="nav navbar-nav navbar-right">

		<li><a class="nav-link"  id="active"  href="login.jsp">Login</a></li>
	</ul>
		</div>
		
	</nav>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top : 20px;">
				<form action ="join.do" method="post" >
					<h3 style="text-align : center;">회원가입</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="password" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20">
					</div>
					<div class="form-group" style = "text-align : center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="gender" autocomplete="off" value="여자" checked>여자		
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="gender" autocomplete="off" value="남자" checked>남자		
							</label>
						</div>		
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="email" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입" Onclick="javascript:writeCheck();">
				</form> 
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
</body>

</html>