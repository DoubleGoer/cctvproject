<%@page import="com.tip.domain.CaptureDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<link rel="stylesheet" href=".././css/animate.css">
  	<link rel="stylesheet" href=".././css/Chart.css">
  	
  	<script src=".././js/Chart.js"></script>
  	<link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/dashboard/">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 	 <link rel="stylesheet" href=".././css/a.css">
</head>
<%@include file=".././menu/headC.jsp"%>

<style>
	.multi-item-carousel .carousel-inner > .item{
		transition: 500ms ease-in-out left;
	}
	
	.multi-item-carousel .carousel-inner .active &.left{
		left:-33%;
	}
	.multi-item-carousel .carousel-inner .active &.right{
		left:33%;
	}
	
	.multi-item-carousel .carousel-inner .next{
		left: 33%;
	}
	.multi-item-carousel .carousel-inner .prev{
	 left: -33%;
	}
	.multi-item-carousel .carousel-inner @media all and (transform-3d), (-webkit-transform-3d) > .item{
	        transition: 500ms ease-in-out left;
	        transition: 500ms ease-in-out all;
	        backface-visibility: visible;
	        transform: none!important;
	}
	.multi-item-carousel .carouse-control &.left{
		background-image: none;
	}
	
	.multi-item-carousel .carouse-control &.right{
		background-image: none;
	}
	#myCarousel {
		width: 1600px;
	}
	// non-related styling:
</style>

	<!-- 여기부터가 페이지 내용관리하는 부분 여기 밑에다 정리 부탁드립니다 -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                	<!-- 여기는 제목을 담다하는 부분 -->
                    <h1>감지사진</h1>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- 여기에서 작업하기 -->
        
        
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        	<h2>일반검출사진</h2>
        </div>
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
	        <div class="grid-container">
	        <div id="myCarousel" class="carousel slide multi-item-carousel" data-ride="carousel">
	        <%
	        	ArrayList<CaptureDTO> capdto = (ArrayList)request.getAttribute("captureList");
	        	int count = 0;
	        %>
			        <div class="carousel-inner">
					        <div class="item active">
								<article id="3685" class="location-listing col-md-4">
							        <a class="location-title" href="<%=capdto.get(count).getRc_url()%>">
							                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
							                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
							        <div class="location-image">
							            <img width="300" height="169" src="<%=capdto.get(count).getRc_url()%>">
					                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
							        </div>
							        <b><p><%=capdto.get(count).getRc_cdate()%></p></b>  
							      </article>
							</div>
							<%for(count=1 ; count< capdto.size();count++){%>
							<div class="item">
								<article id="3685" class="location-listing col-md-4">
							        <a class="location-title" href="<%=capdto.get(count).getRc_url()%>">
							                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
							                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
							        <div class="location-image">
							            <img width="300" height="169" src="<%=capdto.get(count).getRc_url()%>">
					                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
							        </div>
							        <b><p><%=capdto.get(count).getRc_cdate()%></p></b>  
							      </article>
							</div>
							<%} %>
					 </div>
					   <!-- Left and right controls -->
						  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="right carousel-control" href="#myCarousel" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						    <span class="sr-only">Next</span>
						  </a>
				
			 </div>
			</div>
			
			</div>
        </div>
         <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        	<h2>히트맵 사진</h2>
        </div>
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        
	        <div class="grid-container">
	        <div id="myCarousel" class="carousel slide multi-item-carousel" data-ride="carousel">
	        <%
	        	capdto = (ArrayList)request.getAttribute("captureList");
	        	count = 0;
	        %>
		        
			        <div class="carousel-inner">
			        	
					        <div class="item active">
								<article id="3685" class="location-listing col-xs-4">
							        <a class="location-title" href="<%=capdto.get(count).getRc_url()%>">
							                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
							                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
							        <div class="location-image">
							            <img width="300" height="169" src="<%=capdto.get(count).getRc_url()%>">
					                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
							        </div>
							        <b><p><%=capdto.get(count).getRc_cdate()%></p></b>  
							      </article>
							</div>
							<%for(count=1 ; count< capdto.size();count++){%>
							<div class="item">
								<article id="3685" class="location-listing col-xs-4">
							        <a class="location-title" href="<%=capdto.get(count).getRc_url()%>">
							                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
							                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
							        <div class="location-image">
							            <img width="300" height="169" src="<%=capdto.get(count).getRc_url()%>">
					                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
							        </div>
							        <b><p><%=capdto.get(count).getRc_cdate()%></p></b>  
							      </article>
							</div>
							<%} %>
					 </div>
					   <!-- Left and right controls -->
						  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="right carousel-control" href="#myCarousel" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						    <span class="sr-only">Next</span>
						  </a>
				
			 </div>
			</div>
        </div>
         <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        	<h2>인물검출 사진</h2>
        </div>
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        
	        <div class="grid-container">
	        <div id="myCarousel" class="carousel slide multi-item-carousel" data-ride="carousel">
	        <%
	        	capdto = (ArrayList)request.getAttribute("captureList");
	        	count = 0;
	        %>
		        
			        <div class="carousel-inner">
			        	
					        <div class="item active">
								<article id="3685" class="location-listing col-xs-4">
							        <a class="location-title" href="<%=capdto.get(count).getRc_url()%>">
							                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
							                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
							        <div class="location-image">
							            <img width="300" height="169" src="<%=capdto.get(count).getRc_url()%>">
					                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
							        </div>
							        <b><p><%=capdto.get(count).getRc_cdate()%></p></b>  
							      </article>
							</div>
							<%for(count=1 ; count< capdto.size();count++){%>
							<div class="item">
								<article id="3685" class="location-listing col-xs-4">
							        <a class="location-title" href="<%=capdto.get(count).getRc_url()%>">
							                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
							                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
							        <div class="location-image">
							            <img width="300" height="169" src="<%=capdto.get(count).getRc_url()%>">
					                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
							        </div>
							        <b><p><%=capdto.get(count).getRc_cdate()%></p></b>  
							      </article>
							</div>
							<%} %>
					 </div>
					   <!-- Left and right controls -->
						  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="right carousel-control" href="#myCarousel" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						    <span class="sr-only">Next</span>
						  </a>
				
			 </div>
			</div>
        </div>

        
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
		<script type="text/javascript">
		//Instantiate the Bootstrap carousel
		$('.multi-item-carousel').carousel({
		  interval: false
		});
		
		// for every slide in carousel, copy the next slide's item in the slide.
		// Do the same for the next, next item.
		$('.multi-item-carousel .item').each(function(){
		  var next = $(this).next();
		  if (!next.length) {
		    next = $(this).siblings(':first');
		  }
		  next.children(':first-child').clone().appendTo($(this));
		  
		  if (next.next().length>0) {
		    next.next().children(':first-child').clone().appendTo($(this));
		  } else {
		  	$(this).siblings(':first').children(':first-child').clone().appendTo($(this));
		  }
		});
		</script>
</body>

</html>