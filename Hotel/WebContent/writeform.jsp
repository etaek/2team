
<%@ page language="java" contentType="text/html; charset=euc_kr" pageEncoding="euc_kr"%>

<% request.setCharacterEncoding("euc-kr"); %>




    <script> 

function writeCheck()
  {
   var form = document.writeform;
   
  if( !form.subject.value )
   {
    alert( "������ �����ּ���" );
    form.subject.focus();
    return;
   }
 
  if( !form.content.value )
   {
    alert( "������ �����ּ���" );
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
	  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



	<title>�Խ��� �ۼ�</title>
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
				<span class="icon-bar"></span>	<!-- ¦��� ����,, -->
				<span class="icon-bar"></span>				
			</button>
			<a class="navbar-brand" href="main.jsp">Hotel</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">����</a></li>
				<li><a href="mypage.jsp">���� ��Ȳ</a>
				<li><a href="list.jsp">�Խ��� Ȩ</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
					<li><a class="nav-link" href="#" id="active">ID : ${sessionId}</a></li>
		<li><a class="nav-link" href="logout.jsp" id="active">Logout</a></li>	
			</ul>
		</div>
	</nav>
	

	<h3> �Խñ� �ۼ� </h3>

	<br>
  	<form id="inform" action ="write.do" method="post">
		 <table style="text-align:center" class="table table-striped table-bordered table-hover">
			
			<tr>
				<th>�ۼ���</th>
				<th style="text-align:left">${sessionId} </th>
			</tr>
			<tr>
				<th>������</th>
				<th style="text-align:left">
					<select name="area" style="height:25px">
    					<option  value="����">����</option>
    					<option   value="����">����</option>
    					<option  value="�λ�">�λ�</option>
    					<option  value="�뱸">�뱸</option>
    					<option value="���ֵ�">���ֵ�</option>
    			
					</select>
				</th>
			</tr>
			<tr>
				<th>ȣ�� �̸�</th>
				<th style="text-align:left"><input type="text" name="hotelName"></th>
			</tr>

			<tr>	
				<th>����</th>
				<th style="text-align:left"><textarea name="content" rows="15" cols="120"  placeholder="������ �Է��ϼ���" form="inform"></textarea></th>
			</tr>	
			<tr>
				<th></th>
				<th style="text-align:right">		
					<input type=submit class="btn btn-success" value="���" Onclick="javascript:writeCheck();">
					<input type=button class="btn btn-secondary" value="���" OnClick="window.location='list.do'">
				</th>
			</tr>
		</table>
	</form>
<script>
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});
</script>



</body>
</html>