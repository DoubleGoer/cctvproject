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
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
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
                    <h1>통계자료</h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="col-sm-7 col-md-7 well" id="chartline">
                	<!-- 차트 부분 -->
                	<div class="chart-container" style="position: relative; height:55vh; width:40vw">
	                	<script src="js/chart/Chart.js"></script>
						<canvas id="myChart"  style="width: auto !important; height: 300px;"></canvas>
						<%
						
						String data = request.getParameter("data");
						System.out.println(data);
						if(data.equals("") ||data.equals(null)||data.equals("month")){
						%>
						<script>
						var labels = new Array();
						var data = new Array();

						<c:forEach items="${resultList}" var="result" >
							labels.push("${result.month}");
							data.push("${result.data}");
						</c:forEach>
						console.log(labels);
						var ctx = document.getElementById("myChart");
						var myChart = new Chart(ctx, {
						    type: 'bar',
						    data: {
						        labels: labels,
						        datasets: [{
						            label: '달별 매장 총인원수',
						            data: data,
						            backgroundColor: [
						                'rgba(255, 99, 132, 0.2)',
						                'rgba(54, 162, 235, 0.2)',
						                'rgba(255, 206, 86, 0.2)',
						                'rgba(75, 192, 192, 0.2)',
						                'rgba(153, 102, 255, 0.2)'
						                
						            ],
						            borderColor: [
						                'rgba(255,99,132,1)',
						                'rgba(54, 162, 235, 1)',
						                'rgba(255, 206, 86, 1)',
						                'rgba(75, 192, 192, 1)',
						                'rgba(153, 102, 255, 1)'
						            ],
						            borderWidth: 1
						        }]
						    },
						    options: {
						    	maintainAspectRatio: false,
						    	responsive: true,
						    	scales: {
						            yAxes: [{
						                display: true,
						                ticks: {
						                    beginAtZero: true,
						                    max: 100,
						                    min: 0
						                }
						            }]
						        },
						    	display: true
						    }
						});
						</script>
						
						</div>
        </div>
						<div class="col-sm-5 col-md-5 well">
				        	<div class="chart-container" style="position: relative; height:55vh; width:40vw">
				        		<button type="button" onclick="location.href='chart?data=day';">당일 그래프</button>
				        	</div>
				        </div>
						<%}else if(data.equals("day")){ %>
						<script type="text/javascript">
						var ctx = document.getElementById('myChart').getContext('2d');
						var chart = new Chart(ctx, {
						    // The type of chart we want to create
						    type: 'line',

						    // The data for our dataset
						    data: {
						        labels: ['12시', '1시', '2시', '3시', '4시', '5시', '6시'],
						        datasets: [{
						            label: '시간대별 손님 수',
						            borderColor: 'rgb(255, 99, 132)',
						            data: [0, 10, 5, 2, 20, 30, 45]
						        }]
						    },

						    // Configuration options go here
						    options: {
						    	maintainAspectRatio: false,
						    	responsive: true,
						    	display: true
						    }
						});
						</script>
						</div>
        </div>
						
						<div class="col-sm-5 col-md-5 well">
				        	<div class="chart-container" style="position: relative; height:55vh; width:40vw">
				        		<button type="button" onclick="location.href='chart?data=month';">주간 그래프</button>
				        		
				        	</div>
				        </div>
						<%} %>
	                    <!-- 차트를 설정하는 구문입니다 건드리면 안도됴 -->
	          <!-- 차트를 설정하는 구문입니다 건드리면 안도됴 -->
	        
        <!-- 차트를 설정하는 구문입니다 건드리면 안도됴 -->
        
        
        </div>
        </div>

        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
</body>

</html>