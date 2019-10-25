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
<style>
.tableFixHead          { overflow-y: auto; height: 400px; }
.tableFixHead thead th { position: sticky; top: 0; align-items: center; }
</style>


<body>
<%@include file=".././menu/headA.jsp"%>
	<!-- 여기부터가 페이지 내용관리하는 부분 여기 밑에다 정리 부탁드립니다 -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                	<!-- 여기는 제목을 담다하는 부분 -->
                    <h1>고객 현황</h1>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- 여기에서 작업하기 -->
        <div class="col-sm-12 col-md-12 well" id="cctvcontent">
        	<div class="col-sm-5 col-md-5">
        	<div class="col-sm-12 col-md-12">
        	<h1>고객 탈퇴</h1>
        	</div>
        	<div class="tableFixHead col-sm-12 col-md-12">
				<table class="table">
					<thead>
					<tr>
						<th>체크</th>
						<th>고객 아이디</th>
						<th>고객이름</th>
						<th>이메일</th>
					</tr>
					</thead>
					<tbody style="overflow: scroll;">
					
						<form action="cm.action" method="post">
						<c:forEach var="result" items="${data}">
		                    <tr>
		                    		<td><input type="checkbox" name="c_id" value="${result.c_id}"></td>
			                        <td><c:out value="${result.c_id}"/></td>
				                    <td><c:out value="${result.c_name}"/></td>
				                    <td><c:out value="${result.c_email}"/></td>
		                    </tr>
	                	</c:forEach>
	                
	                		<tr>
	                			<td><input type="submit" value="승인"></td>
	                			<td></td>
	                			<td></td>
	                		</tr>
	                	 </form>
					</tbody>
					</table>
				</div>
        	</div>
        	
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</body>
</html>