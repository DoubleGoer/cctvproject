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
        	<button>동선감지 사진</button> <button>감지 사진</button>
        </div>
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        
	        <div class="grid-container">
	        <c:forEach items="${resultList}" var="result" >
					<article id="3685" class="location-listing">
			        <a class="location-title" href="#">
			                      감지데이터 <!--이부분을 남겨논 이유는 마우스 올려놨을때 보여주고 싶은 정보 있으면 추가하라구 남겨놈 예를들어 이미지 촬영 날짜 등등
			                                    니가 생각하기에 필요없는 내용은 과감히 지우고 필요한것만 써 다 쓰려고하지 않아도됨 그저 필요하겠다 싶은거 넣어둔거-->                       </a>
			        <div class="location-image">
			            <img width="300" height="169" src="<c:out value="${result.rc_pic}"/>">
	                                    <!-- src에 이미지 어레이리스트 값 주면 됨-->
			        </div>
			        <b><p><c:out value="${result.rc_cdate}"/></p></b>  
			      </article>
			</c:forEach>
			</div>
        </div>
        
        
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</body>

</html>