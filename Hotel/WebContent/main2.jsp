<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
 
    request.setCharacterEncoding("UTF-8");
 
%>


   <%@ page import="com.board.beans.board" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://eonasdan.github.io/bootstrap-datetimepicker/#date-only">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<title>Main</title>
	<style>
	header{
			float:right;
		}
		
		.bg{
 		background-repeat: no-repeat; 
  		background-attachment:fixed;
  		background-position: center 0px;
  		position: absolute;
  		top:0;
  		right:0;
  		left:0;
  		width:100%;
  		height:100%;
  		z-index:-1;
		}
		#form{
			margin-top:60px;
			margin-left:50px;
			padding:50px;
			width:450px;
			height:500px;
			background-color:white;
			border-radius: 10px;
		}
		.container1 {
  		max-width: 200px;
  		
			}
		
		.spinner input::-webkit-outer-spin-button,
		.spinner input::-webkit-inner-spin-button {
  		margin: 0;
  		-webkit-appearance: none;
			}
		.spinner input:disabled {
  		background-color: white;
		}
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
        <a class="nav-link" href="">Main <span class="sr-only">(current)</span></a>
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
	</ul>
     
     	

   
  </div>
</nav>
	<div id="bg1" class="bg">
		<img class="bg"src="hotel1.jpg" />
		<img class="bg"src="hotel2.jpg" />
		<img class="bg"src="hotel7.jpg" />
		<img class="bg"src="hotel4.jpg" />
	</div>
	
	
	

	
	<div id="form">
		<h2>어디로 가고싶나요?</h2>
		<form action ="move.do" method="post"> 
		<br/>
		<div style="height:60px; padding-left:15px;">
		<label >목적지</label><br/>
    	<select class="custom-select mb-3" name="opt">
      	<option value="seoul">서울</option>
      	<option value="daejon">대전</option>
      	<option value="busan">부산</option>
      	<option value="daegu">대구</option>
      	<option value="jeju">제주도</option>
   		 </select>
   		 </div><br/>
		 <div class="container">
        Check In: <input id="startDate" width="335" />
      	Check Out:<input id="endDate" width="335" /> 
    </div>
   
  <div class="container1" style="height:60px; padding-left:15px;padding-top:0px;width:300px;float:left;display:inline;">
  <label style="padding-top:20px;">인원</label><br/>

  <div class="input-group spinner" >
    <div class="input-group-prepend" style="border-radius: 3px;" >
      <button class="btn text-monospace minus" id="sub"type="button"style="background-color:gray;">-</button>
    </div>
    <input type="number" class="count form-control" min="0" max="10" step="1" value="0">
    <div class="input-group-append">
      <button class="btn text-monospace plus" id="add"type="button"style="background-color:gray;">+</button>
    </div>
  </div>
</div>   
	<div style="margin-top:120px;padding-left:278px;">
		<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</form>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	 <script>
        var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
        $('#startDate').datepicker({
            uiLibrary: 'bootstrap4',
            iconsLibrary: 'fontawesome',
            minDate: today,
            maxDate: function () {
                return $('#endDate').val();
            }
        });
        $('#endDate').datepicker({
            uiLibrary: 'bootstrap4',
            iconsLibrary: 'fontawesome',
            minDate: function () {
                return $('#startDate').val();
            }
        });
    </script>
	<script>
		$(document).ready(function(){
			$('#bg1').cycle({
				fx: 'fade',
				speed:2000
				});
			});
	</script>
	<script>
	$(document).ready(function() {
		  min = 0; // Minimum of 0
		  max = 10; // Maximum of 10
		  $('.count').prop('disabled', true);
		  $('#sub').on("click", function() {
		    if ($('.count').val() > min) {
		      $('.count').val(parseInt($('.count').val()) - 1 );
		      $('.counter').text(parseInt($('.counter').text()) - 1 );
		    }
		  });
		  $('#add').on("click", function() {
		    if ($('.count').val() < max) {
		      $('.count').val(parseInt($('.count').val()) + 1 );
		      $('.counter').text(parseInt($('.counter').text()) + 1 );
		    }
		  });
		 });
	</script>
	
</body>
</html>