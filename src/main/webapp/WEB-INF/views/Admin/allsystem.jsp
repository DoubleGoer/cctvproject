<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<link rel="stylesheet" href=".././css/animate.css">
  	<link rel="stylesheet" href=".././css/Chart.css">
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
  	<link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/dashboard/">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file=".././menu/headA.jsp"%>
	<!-- 여기부터가 페이지 내용관리하는 부분 여기 밑에다 정리 부탁드립니다 -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                	<!-- 여기는 제목을 담다하는 부분 -->
                    <h1></h1>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- 여기에서 작업하기 -->
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
							<table class="table">
				<thead>
				<tr>
					<td>고객 아이디</td>
					<td>서비스 신청일</td>
					<td>설치 주소</td>
					<td>카메라 접속</td>
				</tr>
				</thead>
				<tbody>
					<c:forEach var="result" items="${data}">
	                    <tr>
		                        <td><c:out value="${result.c_id}"/></td>
		                        <form action="controll" method="post">
				                    <input type="hidden" name="c_id" value="${result.c_id}">
				                    <input type="hidden" name="rc_no" value="${result.rc_no}">
			                        <td><c:out value="${result.rc_sdate}"/></td>
			                        <td><c:out value="${result.rc_add}"/></td>
		                        <td><input type="submit" value="CCTV연결"></td>
		                    </form>
	                    </tr>
                	</c:forEach>
				</tbody>
				</table>
        
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</body>
</html>