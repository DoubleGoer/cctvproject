<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@page import="org.springframework.web.bind.annotation.SessionAttribute"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/animate.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
 <style>
	  body {
	      position: relative; 
	  }
  #section1 {padding-top:50px;height:1000px;background: #191919;color: white;}
  #section2 {
  padding-top:50px;
  height:1000px;
  background-color: #c8c8c8;
  }
  #section3 {padding-top:100px;height:1000px;background: #191919;color: white;}
   .navbar {
    margin-bottom: 0;
    background-color: #000000;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  #section4 {padding-top:50px;height:500px;background-color: #000000;color: white;}
  .jumbotron {
    background-color: #000000;
    color: #fff;
    padding: 100px 25px;
    margin-bottom:0px;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #000000 !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  
  .serv {
	padding: 100px;
	border: thin;
	height : 700px;
	border-style: double;
	align-content: center;
	text-align: center;
	box-shadow: 3px 3px 10px #000808;
	background: #fff;
  }
  
  .img1{
  	max-height:50%;
  	width:auto;
  	border-bottom: thin; 
  	border-style: double;
  }
  .serv .sp .img2{
    height:auto;
  	max-width:90%;
  	border-bottom: thin; 
  	border-style: double;
  }
  .data .opencv{
       		max-width: 80%;
       		width: auto;
       		
  }	
  @media ( max-width: 480px ) {
        h1{
       	font-size: 12pt;
       	}
       	h2 {
       	font-size: 10pt;
       	}
       	h3{
       	font-size: 9pt;
       	}
       	
       	.serv {
       	margin-top:20px;
		padding-top: 50px;
		padding-bottom: 0px;
		padding-left : 0px;
		padding-right : 0px;
		border: thin;
		height : 500px;
		width : 320px;
		text-align: center;
		align-content:center;
		align-items:center;
		box-shadow: 3px 3px 10px #000808;
		background: #fff;
		}
		.panel{
			
			margin-left : 25px;
			width :280px;
			text-align: center;
			align-content:center;
			align-items:center;
		}
       	.img1{
       		height : 150px;
       		width: auto;
       	}
       	#section2 {
		  padding-top:50px;
		  height : 1000px;
		  background: #fff;
		  }
      }
  </style>
  <%HttpSession ses = request.getSession(); %>
  
<body data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#section1">About</a></li>
          <li><a href="#section2">Service</a></li>
          <li><a href="#section3">Order</a></li>
          <li><a href="#section4">Comute</a></li>
        </ul>
        <!--로그인후에 session 확인후 회원 이름과 로그아웃 콘솔 로그인 하는 부분 -->
        <%
        	
        	String id = (String)ses.getAttribute("userid");
        	if(id != null){
        %>  	
        		<ul class="nav navbar-nav navbar-right">
			      <li><a href="logout"><span class="glyphicon glyphicon-user"></span>logout</a></li>
			      <li><a href="consoleck"><span class="glyphicon glyphicon-log-in"></span> Console On</a></li>
			    </ul>
			    
		 <%}else{ %>
		    	
			    <ul class="nav navbar-nav navbar-right">
			      <li><a href="join"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			    </ul>
		 <%} %>
	    <!-- 여기까지 jsp 쿼리문으로 처리하여 작업하기 -->
      </div>
    </div>
  </div>
</nav>    
<div class="jumbotron text-center">
  <h1>3TIP</h1> 
  <p>Smart CCTV Service</p> 
</div>
<div id="section1" class="container-fluid">
	<div class="col-lg-8 col-xs-12">
	  <h1>3TIP의 스마트 CCTV시스템</h1>
	  <h2>OpenCV + MJPG-Streaming</h2>
	  <h3>
	    라즈베리 하드웨어의 장치를 이용하여 영상을 검출하고 MJPG-STREAMING을 통한 영상송출 서버를 통해 영상을
	  </h3>
	  <h3>
	    중앙 관리 컴퓨터를 통해 라즈베리에서 받은 영상을 OpenCV를 통해 검출하여 시대에 방범 시스템 구축하면서
	  </h3>
	  <h3>
	   방범이외에 CCTV를 통해 검출된 자료를 통해 사업장 운영에 도움이 되는 정보를 주는 SMART-CCTV 서비스입니다.
	  </h3>
	 
	</div>
	<div class="col-lg-4 col-xs-12 data">
		<img alt="opencv" src="./IMG/opencv.png" class="opencv">
	</div>
</div>
<div id="section2" class="container-fluid">
  <h1 class="col-lg-12 col-xs-12" style="text-align: center;font-size: 60pt;">Service</h1>
  <div class="col-lg-4 col-xs-12">
	<div class="serv">
		<div class="panel panel-default">
		  	<img alt="감지사진" class="img1" src="./IMG/detect.JPG">
		</div>
		<div class="panel-body">
		  	<h1>감지 모드</h1>
		</div>
		  	<h2>감지모드를 이용한 외부인의</h2>
		  	<h2>침입 감지 현장사진 보존</h2>
	</div>
  </div>
  <div class="col-lg-4 col-xs-12">
	<div class="serv">
	  	<div class="panel panel-default sp">
	  		<img alt="성장곡선" src="./IMG/graph1.png" class="img2">
	  	</div>
	  	<div class="panel-body">
	  		<h1>인원 감지</h1>
	  	</div>
		  	<h2>매장내의 사람수를 통한</h2>
		  	<h2>자료를 그래프로 시각화</h2>
		  	<h2>정보제공</h2>
  	</div>
  </div>
  <div class="col-lg-4 col-xs-12">
  	<div class="serv">
  		<div class="panel panel-default">
  			<img alt="CCTV제어" class="img1" src="./IMG/cctv.jpg">
  		</div>
  		<div class="panel-body">
  		<h1>CCTV 제어</h1>
  		</div>
  		<h2>CCTV를 컨트롤 모듈 제공</h2>
  		<h2>(아이콘을 통한 쉬운조작)</h2>
  	</div>
  </div>
  
 </div>
<div id="section3" class="container-fluid">

	   <%
        	
        	if(id != null){
        %>  	
        <button type="button" class="btn btn-info btn-lg" id="service" data-toggle="modal" data-target="#myModal">서비스 이용 신청하기</button>
		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog" style="margin-top: 50px;text-align: center;" class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title" style="color: black;text-align: center;">서비스 신청서</h4>
		      </div>
		      <div class="modal-body" style="color: black;">
		      	<p>서비스를 신청을 위한 주소를 입력해주세요!</p>
		        <form action="service" method="post">
		        	총설치 대수 : 
		        	<select name="count">
			        	<option value="1">1</option>
			        	<option value="2">2</option>
			        	<option value="3">3</option>
			        	<option value="4">4</option>
			        	<option value="5">5</option>
		        	</select><br>
		        	주소 : <input type="text" name="rc_add"><br>
		        	<input type="hidden" name="c_id" value="<%=id%>">
		        	<input type="submit" value="신청하기">
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
		 <%}else{ %>
		<button type="button" class="btn btn-info btn-lg" id="service" data-toggle="modal" data-target="#myModal"  onclick="location.href='login'">회원가입/로그인을 하여 서비스를 신청합니다!</button>
		
	</div>
		 <%} %>
	<!-- Trigger the modal with a button -->
	



<div id="section4" class="container-fluid">
  <h1>Section 4</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>

<!-- 하단부분은 클릭 위에 클릭시 천천히 움직이게 만드는 시스템 건들지 마시오 -->
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</html>
