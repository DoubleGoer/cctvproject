<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>

<%@include file=".././menu/headC.jsp"%>

    
	<!-- 여기부터가 페이지 내용관리하는 부분 여기 밑에다 정리 부탁드립니다 -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                	<!-- 여기는 제목을 담다하는 부분 -->
                    <h1>고객님 오신것을 환영합니다</h1>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- 여기에서 작업하기 -->
        <div class="col-sm-7 col-md-7 well" id="cctvcontent">
                	<!-- 여기는 제목을 담다하는 부분 -->
                    <h1>동작중인 CCTV</h1>
                    <img alt="CCtv영상" src="http://221.155.24.64:8090/?action=stream" id="cctv" class="col-sm-12 col-md-12 well">
                    <ul class="pagination">
					  <li><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#">4</a></li>
					  <li><a href="#">5</a></li>
					</ul>
        </div>
        <div class="col-sm-5 col-md-5 well" id="cctvcontent">
                	<!-- 여기는 제목을 담다하는 부분 -->
                    <h1>최근 검출사진</h1>
                    <img alt="검출사진" src="https://s3.amazonaws.com/smartcctvsystems/vtest.avi/detected/detected_0(2019-05-11+21%3A48%3A06).jpg" id="capture" class="col-sm-12 col-md-12 well">
                    <h4>2014.05.25</h4>
                    
        </div>
        <div class="col-sm-12 col-md-12 well" id="chartline">
                	<!-- 차트 부분 -->
                	<div class="chart-container" style="position: relative; height:40vh; width:80vw">
	                	<script src="js/chart/Chart.js"></script>
						<canvas id="myChart" width="500" height="300"></canvas>
						<script>
						var ctx = document.getElementById("myChart");
						var myChart = new Chart(ctx, {
						    type: 'bar',
						    data: {
						        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
						        datasets: [{
						            label: '# of Votes',
						            data: [12, 19, 3, 5, 2, 3],
						            backgroundColor: [
						                'rgba(255, 99, 132, 0.2)',
						                'rgba(54, 162, 235, 0.2)',
						                'rgba(255, 206, 86, 0.2)',
						                'rgba(75, 192, 192, 0.2)',
						                'rgba(153, 102, 255, 0.2)',
						                'rgba(255, 159, 64, 0.2)'
						            ],
						            borderColor: [
						                'rgba(255,99,132,1)',
						                'rgba(54, 162, 235, 1)',
						                'rgba(255, 206, 86, 1)',
						                'rgba(75, 192, 192, 1)',
						                'rgba(153, 102, 255, 1)',
						                'rgba(255, 159, 64, 1)'
						            ],
						            borderWidth: 1
						        }]
						    },
						    options: {
						    	responsive: false
						    
						    }
						});
						</script>
	                    <!-- 차트를 설정하는 구문입니다 건드리면 안도됴 -->
	                   
	        </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
</body>

</html>