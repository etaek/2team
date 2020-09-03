<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
<link rel="stylesheet" href="https://eonasdan.github.io/bootstrap-datetimepicker/#date-only">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">-->
<!-- <link rel="stylesheet" href="https://eonasdan.github.io/bootstrap-datetimepicker/#date-only">-->
<!-- <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>-->
<!--<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>-->
<script src="js/bootstrap.js"></script>
<script src="script/script.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<style>

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}
#navbar {
  overflow: hidden;
  background-color:white;
  }
 .fontStyle{
       text-align: center;
     }
 
 .left{   
          margin:auto;
         margin-left:150px;
         float:left;         
         padding-top:30px;
         
      }
#right{
         margin:auto;
         margin-left:150px;
         float:left;         
         padding-top:30px;
         float:left;
}
 .right{   
         margin-left:550px;
         padding-top:30px;
         
      }
      
.target1{
         height:170px;
         margin-left:70px;
         float:left;
         width:20%;
         text-align:center;
}
.target2{
         
         margin-left:440px;
         margin-top:40px;
         width:60%;
}
 .big{
   margin-left:100px;
   }
            .t1{ 
                                  /*Selecting the design and location of the top menu*/
                text-align: center;       
                padding: 10px;         
            }
            .t2{                  /*Design settings for menus in the menu bar*/
             
                display: inline;   /*List elements laterally*/
                padding: 50px;     
            color: black;      
            }
            .t3 {           
                  font-size:15pt;      /*Tap a menu to link to that menu page*/
                text-decoration: none;   
            color:black;         
            }
            .t4{
               text-decoration:none;
            }
          
   
.swiper-container {background-color: #333;}
.swiper-container .swiper-slide {width:1050px;}
.swiper-container .swiper-slide {-webkit-opacity: .4; -moz-opacity: .4; opacity: .4; filter: 'alpha( opacity = 40 )'; -webkit-transition: .25s opacity; -moz-transition: .25s opacity; -ms-transition: .25s opacity; -o-transition: .25s opacity;  transition: .25s opacity;}
.swiper-container .swiper-slide-active {-webkit-opacity: 1;-moz-opacity: 1; opacity: 1;filter: 'alpha( opacity = 100 )';}
.swiper-slide .sw_txt {position: absolute; right: 0; bottom: 0; left: 0; height:80px; line-height:80px; background-color: rgba(0,0,0,.3); color: #fff; font-size:24px; color:#fff; text-align:left; padding:0 25px;}
.swiper-button-next, .swiper-button-prev, .swiper-pagination {/*display:none;*/}
.swiper-pagination {display:none;}
.swiper-container .swiper-button-next {left: 50%; margin-left: 545px; right:auto;}
.swiper-container .swiper-button-prev {left: 50%; margin-left: -575px;}

#active{
			font-weight:bold;
		}
</style>
<script>
$(document).ready(function(){
    var swiper = new Swiper('.swiper-container', {
       navigation : {
          nextEl : '.swiper-button-next', // 다음 버튼 클래스명
          prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
       },
        direction: 'horizontal',
        pagination: '.swiper-pagination',
        paginationClickable: true,
//        slidesPerView: 3, // 한번에 보이는 슬라이드 갯수
        spaceBetween: 0, // 슬라이드 사이의 간격 px 단위
        mousewheelControl: false, // 마우스 휠로 슬라이드 움직임
        loop : true,
        grabCursor: true,
        nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev',
        centeredSlides:!0,  //활성 슬라이드가 왼쪽 또는 가운데 배치 (1,0,true,false)
        slidesPerView:"auto"  // 한번에 보이는 슬라이드 갯수. 반응형 및 다양한 디자인은 auto가 나음.
     });
});



</script>
<title>Hotel Inter-Burgo Exco</title>
</head>

<body>
<form method="post" action ="book.do">
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
        <a class="nav-link" href="list.do">후기 게시판</a>
      </li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
       <li><a class="nav-link" href="#" id="active"><input name="id" value="${sessionId}" style="display:none;">ID : ${sessionId}</span></a></li>
      <li><a class="nav-link" href="logout.jsp" id="active">Logout</a></li>
   </ul>
     </div>
</nav>
<div class="swiper-container">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide">
                <a href="">
                    <div class="sw_img"><img src="daegu/daegu_hotel5_out4.jpg"width="100%" alt="호텔인터불고 엑스코"></div>
                    <div class="sw_txt">호텔인터불고 엑스코</div>
                </a>
            </div>
         <div class="swiper-slide">
                <a href="">
                    <div class="sw_img"><img src="daegu/daegu_hotel5_in1.jpg" width="100%" alt="호텔인터불고 엑스코"></div>
                    <div class="sw_txt">호텔인터불고 엑스코</div>
                </a>
            </div>
            <div class="swiper-slide">
                <a href="">
                    <div class="sw_img"><img src="daegu/daegu_hotel5_in2.jpg" width="100%" alt="호텔인터불고 엑스코"></div>
                    <div class="sw_txt">호텔인터불고 엑스코</div>
                </a>
            </div>
            <div class="swiper-slide">
                <a href="">
                    <div class="sw_img"><img src="daegu/daegu_hotel5_in3.jpg" width="100%" alt="호텔인터불고 엑스코"></div>
                    <div class="sw_txt">호텔인터불고 엑스코</div>
                </a>
            </div>
            <div class="swiper-slide">
                <a href="">
                    <div class="sw_img"><img src="daegu/daegu_hotel5_in6.jpg" width="100%" alt="호텔인터불고 엑스코"></div>
                    <div class="sw_txt">호텔인터불고 엑스코</div>
                </a>
            </div>
            <div class="swiper-slide">
                <a href="">
                    <div class="sw_img"><img src="daegu/daegu_hotel5_in4.jpg" width="100%" alt="호텔인터불고 엑스코"></div>
                    <div class="sw_txt">호텔인터불고 엑스코</div>
                </a>
            </div>
        </div>
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>
        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
 
        <!-- If we need scrollbar -->
</div><!-- swiper-container -->


<div id="standard" style="border:1px solid white;"></div>
<div id="navbar" style="z-index:3;">
      <ul class="t1">
            <li class="t2"><a class="t3"href="#standard"><i class='fas fa-user' style='font-size:36px'></i>1~2인</a></li> <!--connection of home-->
            <li class="t2"><a class="t3"href="#deluxe"><i class='fas fa-user-friends' style='font-size:36px'></i>2~3인</a></li>  <!--connection of reservation-->
            <li class="t2"><a class="t3"href="#queen"><i class='fas fa-users' style='font-size:36px'></i>3인이상</a></li>   <!--connection of event-->
            <li class="t2"><a class="t3"href="#more"><i class='fas fa-building' style='font-size:36px'></i>호텔 세부정보</a></li>   <!--connection of contact-->
        </ul>
 </div>

<div>
<h3 class="big">Standard Room</h3>
<div  class="carousel slide" data-ride="carousel" style="width:300px;padding-top:30px;margin-left:150px;float:left">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="daegu/daegu_hotel5_in1.jpg" width="300px" height="300px" />
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in2.jpg" width="300px" height="300px"/>
    </div>
    <div class="carousel-item">
      <img src="seoulhotel1/bathroom1.jpg" width="300px" height="300px"/>
    </div>
  </div>
</div>
<div id="right" style="margin-right:130px;">
<h4>Standard Double</h4>
<br/>
<p>더블배드 1개</p>
<p>객실크기:25m^2</p>
<p>전망:시티뷰</p>
<p>샤워실</p><p>무료와이파이</p>
<p>저층 객실 or 고층 객실 존재</p>
</div>
<div style="width:320px;height:335px;margin-left:1300px;margin-right:50px;padding-top:15px;background-color:#d9dddc;border-radius:10px;">
<div class="input-group mb-3" style="width:271px;">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="checkbox" aria-label="Checkbox for following text input"checked disabled>
    </div>
  </div>
  <input type="text" class="form-control" value="호텔인터불고 엑스코"aria-label="Text input with checkbox" name="name">
</div>

<div class="container">
        Check In: <input id="startDate" style="width:85%;" name="startdate" />
         Check Out:<input id="endDate" style="width:85%;" name="enddate"/> 
</div>

<div class="input-group input-group-sm mb-3" style="width:70%;margin-top:20px;float:left;">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-sm" style="height:31px;">Room</span>
  </div>
  <select class="custom-select mb-3" name="room">
         <option>Standard Double</option>
         <option>Standard Twin</option>
         <option>Deluxe Double</option>
         <option>Deluxe Twin</option>
         <option>SweetRoom</option>
          </select>
</div>
<div class="input-group input-group-sm mb-3" style="width:68px;margin-top:20px;margin-left:251px;">
       <select class="custom-select mb-3" name="num">
         <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>
         <option>5</option>
          </select>
</div>
<input type="submit" class="btn btn-info" style="width:100%;"value="예약하기">
</div>
</form>

<br/><br/>
<div  class="carousel slide" data-ride="carousel" style="width:300px;padding-top:30px;margin-left:150px;float:left;">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="daegu/daegu_hotel5_in5.jpg" width="300px" height="300px" />
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in6.jpg" width="300px" height="300px"/>
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in7.jpg" width="300px" height="300px"/>
    </div>
  </div>
</div>
<div class="right">
<h4>Standard Twin</h4>
<br/>
<p>싱글배드 2개</p>
<p>객실크기:25m^2</p>
<p>전망:시티뷰</p>
<p>샤워실</p><p>무료와이파이</p>
<p id="deluxe">저층 객실</p><br/>
</div>
</div>

<br/><hr/><br/>
<div>
<h3 class="big">Deluxe Room</h3>
<div  class="carousel slide" data-ride="carousel" style="width:300px;padding-top:30px;margin-left:150px;float:left">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="daegu/daegu_hotel5_in8.jpg" width="300px" height="300px" />
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in4.jpg" width="300px" height="300px"/>
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in3.jpg" width="300px" height="300px"/>
    </div>
  </div>
</div>
<div class="right">
<h4>Deluxe Double</h4>
<br/>
<p>퀸배드 1개</p>
<p>객실크기:43m^2</p>
<p>전망:시티뷰</p>
<p>샤워실 및 욕조</p><p>무료와이파이</p>
<p>현장 배정 객실</p>
</div>
<br/><br/>
<div  class="carousel slide" data-ride="carousel" style="width:300px;padding-top:30px;margin-left:150px;float:left">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="daegu/daegu_hotel5_in2.jpg" width="300px" height="300px" />
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in1.jpg" width="300px" height="300px"/>
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in3.jpg" width="300px" height="300px"/>
    </div>
  </div>
</div>
<div class="right">
<h4>Deluxe Twin</h4>
<br/>
<p>싱글베드 1개+더블베드 1개</p>
<p>객실크기:43m^2</p>
<p>전망:시티뷰</p>
<p>샤워실 및 욕조</p><p>무료와이파이</p>
<p id="queen">11층 전 객실, 15층 객실 3개 ,20층 객실 1개</p><br/>
</div>
</div>
<br/><hr/><br/>
<div >
<h3 class="big">Sweet Room</h3>
<div  class="carousel slide" data-ride="carousel" style="width:300px;padding-top:30px;margin-left:150px;float:left">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="daegu/daegu_hotel5_in8.jpg" width="300px" height="300px" />
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in7.jpg" width="300px" height="300px"/>
    </div>
    <div class="carousel-item">
      <img src="daegu/daegu_hotel5_in8.jpg" width="300px" height="300px"/>
    </div>
  </div>
</div>
<div class="right">
<h4>Execuive Queen</h4>
<br/>
<p>퀸배드 1개</p>
<p>객실크기:53m^2</p>
<p>전망:시티뷰</p>
<p>샤워실 및 욕조</p><p>무료와이파이</p>
<p id="more">고층 객실 가능</p>
</div>
<br/>
</div>
<br/><hr/>
<div>
<img src="daegu/daegu_hotel5_out2.jpg" style="margin-left:70px;width:90%;height:500px;" /><br/>
<div >
<div class="target1"><h4 style="font-size:18pt"><b>둘러보기</b></h4></div>
<div class="target2">

<p>
호텔 인터불고 엑스코는 엑스코 바로 옆에 자리하고 있습니다. 또한, 차로 15분 거리에 KTX 동대구역과 대구 국제공항이 있어 교통 또한 편리합니다. 주변 관광지로는 김광석 다시그리기길이 차로 15분 거리에 있으며 팔공산 도립공원과 83타워가 있는 이월드가 차로 40분 거리에 있습니다. 

인피니티 풀, 사우나 등을 갖춘 이 호텔에 머무시면 대구에 계시는 동안 럭셔리한 휴가를 즐기실 수 있습니다. 객실에는 에어컨, 평면 TV, 무료 무선 인터넷이 완비되어 있습니다. 

현대적인 이 호텔에는 카페, 미용실, 피트니스 수업 등이 완비되어 있습니다. 차량을 가지고 오신 고객님들을 위해 무료 공용 주차장을 제공하고 있습니다. 

각 객실에는 투숙객이 편안하게 머무실 수 있도록 각종 시설이 갖춰져 있으며 커피 메이커, 냉장고, 슬리퍼 등이 완비되어 있습니다. 모든 객실에 커피/차 메이커, 생수, 전용 욕실 등이 구비되어 있습니다.
</p>
</div>
</div>
</div>
<br/><hr/>
<div>
<div class="target1"><h4 style="font-size:18pt"><b>편의시설 및 서비스</b> </h4></div>
<div class="target2">
<i class='far fa-thumbs-up' style='font-size:45pt;float:left;'></i>
<span style="font-size:18pt;margin-left:30px;">인기시설</span>
<h4><span style="margin-left:30px;"><i class='fas fa-utensils' style='font-size:24px'></i></span>레스토랑
<span style="margin-left:20px;"> <i class='fas fa-swimmer' style='font-size:24px'></i>피트니스센터</span></h4>       
 <br/><br/>
<i class="fas fa-globe-americas" style="font-size:45pt;float:left;"></i>
<span style="font-size:18pt;margin-left:30px;">
사용가능 언어</span>
<h4><span style="margin-left:30px;"><i class='fas fa-map-marker-alt' style='font-size:24px'></i>한국어</span>
<span style="margin-left:20px;"><i class='fas fa-map-marker-alt' style='font-size:24px'></i>영어</span>
<span style="margin-left:20px;"><i class='fas fa-map-marker-alt' style='font-size:24px'></i>일본어</span>
<span style="margin-left:20px;"><i class='fas fa-map-marker-alt' style='font-size:24px'></i>중국어</span>
<span style="margin-left:20px;"><i class='fas fa-map-marker-alt' style='font-size:24px'></i>불어</span></h4>  <br/><br/>
<i class='fas fa-user' style='font-size:45pt;float:left;'></i><span style="font-size:18pt;margin-left:35px;">서비스</span>
<h4><span style="margin-left:35px;"><i class='fas fa-plane' style='font-size:24px'></i>공항이동교통 서비스</span>
<span style="margin-left:20px;"> <i class='fas fa-parking' style='font-size:24px'></i>무료 주차장</span>
<span style="margin-left:20px;"> <i class='fas fa-car-side' style='font-size:24px'></i>발렛파킹 서비스</span>
</h4> 
<h4><span style="margin-left:87px;"><i class='fas fa-wheelchair' style='font-size:24px'></i>휠체어 접근 가능</span>
<span style="margin-left:40px;"> <i class='fas fa-wifi' style='font-size:24px'></i>무료 와이파이</span>
<span style="margin-left:20px;"> <i class='fas fa-lock' style='font-size:24px'></i>금고 서비스</span>
</h4> 
</div></div>
<br/><br/>
<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
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
</body>
</html>