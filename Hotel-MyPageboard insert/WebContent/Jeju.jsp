<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
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
  -webkit-transition-delay: 0;
  transition-delay: 0;
}
figure.snip1382:after {
  top: 25%;
  -webkit-transition-delay: 0.1s;
  transition-delay: 0.1s;
}
figure.snip1382 figcaption:before {
  top: 50%;
  -webkit-transition-delay: 0.2s;
  transition-delay: 0.2s;
  z-index: -1;
}
figure.snip1382 figcaption:after {
  top: 75%;
  -webkit-transition-delay: 0.3s;
  transition-delay: 0.3s;
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
  -webkit-transition-delay: 0.25s;
  transition-delay: 0.25s;
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
      width:300px;
   
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
<title>Jeju</title>
</head>

<body>
   <nav class="navbar navbar-default">
      <div class="navbar-header">
         <button type = "button" class="navbar-toggle collapsde" data-toggle="collapse"
         data-target="#bs-example-navbar-collapse-1"
         aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>   <!-- 짝대기 개수,, -->
            <span class="icon-bar"></span>            
         </button>
         <a class="navbar-brand" href="main.jsp">Hotel</a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li><a href="main.jsp">메인</a></li>
            <li><a href="bbs.jsp">게시판</a></li>
         </ul>
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown"
               role="button" aria-haspopup="true" aria-expanded="false">
               login<span class="caret"></span></a>
               <ul class="dropdown-menu">
                  <li class="active"><a href="login.jsp">로그인</a></li>
                  <li><a href="join.jsp">회원가입</a></li>
               </ul>
            </li>   
         </ul>
      </div>
   </nav>
   <div>
      <button type="button" class="btn">날짜</button>
      <button type="button" class="btn">인원</button>
      <button type="button" class="btn">가격</button>
   </div>
   <hr>
   <h2 class="area">제주도</h2>
   
<div class="row" >
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="hotel1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel7.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3>아늑한 제주도 게스트하우스</h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="hotel1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel7.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3>아늑한 제주도 게스트하우스</h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="hotel1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel7.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3>아늑한 제주도 게스트하우스</h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="hotel1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel7.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3>아늑한 제주도 게스트하우스</h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="hotel1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel7.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3>아늑한 제주도 게스트하우스</h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
   <div class="home__slider"> 
       <div class="bxslider"> 
          <figure class="snip1382">
              <img src="hotel1.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel2.jpg" alt="sample99" height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel4.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
         <figure class="snip1382">
              <img src="hotel7.jpg" alt="sample99"  height="400" width="500" />
              <figcaption>
                <h2>Gustav Purpleson</h2>
                <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                <div class="icons"><a href="#"><i class="ion-chatbubbles"></i></a>
                  <a href="#"> <i class="ion-heart"></i></a>
                </div>
              </figcaption>
         </figure>
           
         </div> 
         <div class="ment">
            <h3>아늑한 제주도 게스트하우스</h3>
            <h5>&#8361;69,000/박</h5>
         </div>
   </div>    
</div>

</body>

</html>