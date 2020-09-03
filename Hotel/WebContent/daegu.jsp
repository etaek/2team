<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

 <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script src="./js/jquery.bxslider.js"></script>
<script src="js/bootstrap.js"></script>
<script src="script/script.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>

<style>
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,500,900);
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
figure.snip1382 {
  font-family: 'Source Sans Pro', Arial, sans-serif;
  position: relative;
  overflow: hidden;

  
  max-width: 500px;
  max-height: 400px;
  width: 100%;
  color: #ffffff;
  text-align: center;
  font-size: 16px;
}
figure.snip1382 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
figure.snip1382 img {
  max-width: 100%;
}
figure.snip1382:after,
figure.snip1382:before,
figure.snip1382 figcaption:after,
figure.snip1382 figcaption:before {
  background: #0a0a0a;
  height: 25%;
  position: absolute;
  content: '';
  opacity: 0;
  -webkit-transition: all 0.35s steps(4);
  transition: all 0.35s steps(4);
  z-index: 1;
  left: 50%;
  right: 50%;
}
figure.snip1382:before {
  top: 0;
  -webkit-transitdelay: 0;
  transitdelay: 0;
}
figure.snip1382:after {
  top: 25%;
  -webkit-transitdelay: 0.1s;
  transitdelay: 0.1s;
}
figure.snip1382 figcaption:before {
  top: 50%;
  -webkit-transitdelay: 0.2s;
  transitdelay: 0.2s;
  z-index: -1;
}
figure.snip1382 figcaption:after {
  top: 75%;
  -webkit-transitdelay: 0.3s;
  transitdelay: 0.3s;
  z-index: -1;
}
figure.snip1382 figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 2;
  padding: 30px;
}
figure.snip1382 h2,
figure.snip1382 p,
figure.snip1382 .icons {
  margin: 0;
  width: 100%;
  opacity: 0;
}
figure.snip1382 h2 {
  font-weight: 900;
  text-transform: uppercase;
}
figure.snip1382 p {
  font-weight: 300;
}
figure.snip1382 .icons {
  position: absolute;
  bottom: 30px;
  left: 0;
  width: 100%;
}
figure.snip1382 i {
  padding: 0px 10px;
  display: inline-block;
  font-size: 24px;
  color: #ffffff;
  text-align: center;
  opacity: 0.8;
  text-decoration: none;
}
figure.snip1382 i:hover {
  opacity: 1;
}
figure.snip1382:hover:after,
figure.snip1382.hover:after,
figure.snip1382:hover:before,
figure.snip1382.hover:before,
figure.snip1382:hover figcaption:after,
figure.snip1382.hover figcaption:after,
figure.snip1382:hover figcaption:before,
figure.snip1382.hover figcaption:before {
  left: 0;
  right: 0;
  opacity: 0.8;
}
figure.snip1382:hover figcaption h2,
figure.snip1382.hover figcaption h2,
figure.snip1382:hover figcaption p,
figure.snip1382.hover figcaption p,
figure.snip1382:hover figcaption .icons,
figure.snip1382.hover figcaption .icons {
  -webkit-transitdelay: 0.25s;
  transitdelay: 0.25s;
}
figure.snip1382:hover figcaption h2,
figure.snip1382.hover figcaption h2,
figure.snip1382:hover figcaption .icons,
figure.snip1382.hover figcaption .icons {
  opacity: 1;
}
figure.snip1382:hover figcaption p,
figure.snip1382.hover figcaption p {
  opacity: 0.7;
}
 .fontStyle{
       text-align: center;
     }
     
    .btn{
       margin-left:15px;
    }
    .btn:hover{
       background-color:#EAEAEA;
    }
   .fadding-photo:hover {
       opacity:0.6;
    }
    .row{
       align:center;
       
       margin-top:40px;
    }
   .home__slider{
      width:500px;
      float:left;
      margin-left:30px;
   
   }
   .bxslider{
      width:500px;
   
   }
   .ment{
      text-align:center;
   }
   .area{
      align:left;
   }
   body .row{
  
     display: flex;
     justify-content: center;
     align-items: center;
     flex-flow: wrap;
     margin: 0;
     height: 100%;
}
#active{
			font-weight:bold;
		}
</style>
<script>
$(document).ready(function(){ 
    var main = $('.bxslider').bxSlider({ 
    mode: 'fade', 
   // auto: true,   //자동으로 슬라이드 
    controls : true,   //좌우 화살표   
    autoControls: true,   //stop,play 
    pager:true,   //페이징 
    pause: 3000, 
    autoDelay: 0,   
    slideWidth: 800, 
    speed: 500, 
    stopAutoOnclick:true 
}); 
   
$(".bx-stop").click(function(){   // 중지버튼 눌렀을때 
    main.stopAuto(); 
    $(".bx-stop").hide(); 
    $(".bx-start").show(); 
    return false; 
}); 

$(".bx-start").click(function(){   //시작버튼 눌렀을때 
    main.startAuto(); 
    $(".bx-start").hide(); 
    $(".bx-stop").show(); 
    return false; 
}); 

  $(".bx-start").hide();   //onload시 시작버튼 숨김. 
}); 
$(".hover").mouseleave(
        function () {
          $(this).removeClass("hover");
        }
      );
</script>
<title>Daegu</title>
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
   
   <hr>
   <h2 class="area">대구</h2>
   
<div class="row" >
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="daegu/daegu_hotel1_out1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Rivertain Hotel</h2>
                <br>
                <p>Check-in:14:00~</p>
                <p>Check-out:11:00~</p>
                <br>
                <p>대구광역시 중구 성내1동 경상감영길 193</p>
                <p>TEL:053-269-4000</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel1_out2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Rivertain Hotel</h2>
                <p>대구광역시 중구 성내1동 경상감영길 193</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel1_out3.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Rivertain Hotel</h2>
                <p>대구광역시 중구 성내1동 경상감영길 193</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel1_out4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Rivertain Hotel</h2>
                <p>대구광역시 중구 성내1동 경상감영길 193</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3><a href="Daeguhotel1.jsp" target="_blank">리버틴호텔</a> </h3>
            <h5>&#8361;104,499원/박</h5>
         </div>
   </div>    
   
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="daegu/daegu_hotel2_out1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Daegu February Hotel Dongseongro</h2>
                <br>
                <p>check-in:14:00~</p>
                <p>check-out:12:00~</p>
                <br>
                <p>대구광역시 중구 동일동 중앙대로81길 16
                <p>TEL:053-257-9898</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel2_out2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Daegu February Hotel Dongseongro</h2>
                <p>대구광역시 중구 동일동 중앙대로81길 16</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel2_out3.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Daegu February Hotel Dongseongro</h2>
                <p>대구광역시 중구 동일동 중앙대로81길 16</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel2_out4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Daegu February Hotel Dongseongro</h2>
                <p>대구광역시 중구 동일동 중앙대로81길 16</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3><a href="Daeguhotel2.jsp" target="_blank">2월호텔 동성로스</a> </h3>
            <h5>&#8361;109,562원/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="daegu/daegu_hotel3_out1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Hotel Insomni</h2>
                <br>
                <p>check-in:12:00~</p>
                <p>check-out:1:00~</p>
                <br>
                <p>11-2 중구 대구광역시 KR</p>
                <p>TEL:053-257-5553</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel3_out2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Hotel Insomni</h2>
                <p>11-2 중구 대구광역시 KR</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel3_out3.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Hotel Insomni</h2>
                <p>11-2 중구 대구광역시 KR</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel3_out4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Hotel Insomni</h2>
                <p>11-2 중구 대구광역시 KR</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
			    <h3><a href="Daeguhotel3.jsp" target="_blank">아호텔인섬니아</a> </h3>
            <h5>&#8361;81,172/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="daegu/daegu_hotel4_out1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Boutique Hotel Instar</h2>
                <br>
                <p>Check-in:10:00~</p>
                <p>Check-out:12:00~</p>
                <br>
                <p>대구광역시 164 Yuram-ro, Dong-gu</p>
                <p>TEL:010-7173-3313</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel4_out2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Boutique Hotel Instar</h2>
                <p>대구광역시 164 Yuram-ro, Dong-gu</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel4_out3.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Boutique Hotel Instar</h2>
                <p>대구광역시 164 Yuram-ro, Dong-gu</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel4_out4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Boutique Hotel Instar</h2>
                <p>대구광역시 164 Yuram-ro, Dong-gu</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
			    <h3><a href="Daeguhotel4.jsp" target="_blank">호텔인스타</a> </h3>
            <h5>&#8361;78,414원/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="daegu/daegu_hotel5_out1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
  				<h2>Hotel Inter-Burgo Exco</h2>
                <br>
                <p>Check-in:10:00~</p>
                <p>Check-out:12:00~</p>
                <br>
                <p>대구광역시 북구 산격동 유통단지로 80</p>
                <p>TEL:053-380-0114</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel5_out2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <p>대구광역시 북구 산격동 유통단지로 80</p>
                <p>TEL:053-380-0114</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel5_out3.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <p>대구광역시 북구 산격동 유통단지로 80</p>
                <p>TEL:053-380-0114</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel5_out4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <p>대구광역시 북구 산격동 유통단지로 80</p>
                <p>TEL:053-380-0114</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
			    <h3><a href="Daeguhotel5.jsp" target="_blank">호텔인터불고 엑스코</a> </h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="daegu/daegu_hotel6_out1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
  				<h2>Go hostel</h2>
                <br>
                <p>Check-in:10:00~</p>
                <p>Check-out:12:00~</p>
                <br>
                <p>대구광역시 중구 문화동 동성로12길 21</p>
                <p>TEL:010-2729-1970</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel6_out2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <p>대구광역시 중구 문화동 동성로12길 21</p>
                <p>TEL:010-2729-1970</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel6_out3.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <p>대구광역시 중구 문화동 동성로12길 21</p>
                <p>TEL:010-2729-1970</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="daegu/daegu_hotel6_out4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <p>대구광역시 중구 문화동 동성로12길 21</p>
                <p>TEL:010-2729-1970</p>
                <div class="icons"><a href="#"><i class="chatbubbles"></i></a>
                  <a href="#"> <i class="heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
			    <h3><a href="Daeguhotel5.jsp" target="_blank">고호스탤</a> </h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   
</div>

</body>

</html>