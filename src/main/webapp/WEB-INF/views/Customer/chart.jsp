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
                	<!-- 일별 차트 부분 -->
                	<div class="chart-container" style="position: relative; height:55vh; width:40vw">
	                	
						<canvas id="myChart"  style="width: auto !important; height: 300px;"></canvas>
						<%
						
						String data = request.getParameter("data");
						System.out.println(data);
						if(data.equals("") ||data.equals(null)||data.equals("month")){
						%>
						<script>
						var labels = new Array();
						var data = new Array();

						<c:forEach items="${chartdata}" var="result" >
							labels.push("${result.rc_day}");
							data.push("${result.rc_count}");
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
				        	<div class="caldata">
					        <% 
					        	int i = 1;
					        %>
					        <form action="chart" method="get">
					        		<input type="hidden" name="data" value="month">
					        		<input type="hidden" name="c_id" value="<%= (String) session.getAttribute("userid")%>">
						        	 <select id="rc_no" name="rc_no" onchange="device(this.value)">
									<option selected="selected" value="--">------</option> 
											
									  </select>
									  <select id="rc_year" name="rc_year"  onchange="year(this.value)">
									  <option selected="selected" value="--">------</option> 
														  
									  </select>
									  <select id="rc_month" name="rc_month"  onchange="month(this.value)">
									  
									  	<option selected="selected" value="--">------</option>
									  
									  </select>
									  <input type="submit" value="검색">
								  </form>
					        </div>
					        
				        </div>
				        <script>
				        window.onload = function(){
				        	var i = 1;
				        	var pastck = null;
				        	 <c:forEach items="${searchdata}" var="result" >
				        	 	if(pastck==null || pastck != ${result.rc_no}){
				        	 		$('#rc_no').append("<option value=\"${result.rc_no}\">"+ i+"</option>");
				        	 	}
				        	 	pastck=${result.rc_no};
					     	</c:forEach>
				        }
				        
				        function device(str) {
				        	var value = $('#rc_no').val();
				     
				        	document.getElementById('rc_year').innerHTML="<option  value=\"--\">------</option>";
				        	document.getElementById('rc_month').innerHTML="<option  value=\"--\">------</option>";
				        	
				        	var pastck = null;
				        	<c:forEach items="${searchdata}" var="result" >
				        	 	if(value == ${result.rc_no} && (pastck == null || pastck != ${result.rc_year})){	
				        	 		$('#rc_year').append("<option  value=\"${result.rc_year}\">${result.rc_year}</option>");
				        	 	}
				        	 	pastck = ${result.rc_year}
				     		</c:forEach>

				        }
				        function year(str) {
				        	
				        	document.getElementById('rc_month').innerHTML="<option  value=\"--\">------</option>";
				        	
				        	var value = $('#rc_no').val();
				        	var value2 = $('#rc_year').val();
				        	var pastck = null;
				        	<c:forEach items="${searchdata}" var="result" >
				        	 	if((value == ${result.rc_no} && value2 == ${result.rc_year}) && (pastck == null || pastck != ${result.rc_month})){
				        	 		$('#rc_month').append("<option  value=\"${result.rc_month}\">${result.rc_month}</option>");
				        	 	}
				        	 	pastck = ${result.rc_month}
				     		</c:forEach>

				        }
				        
						
				       
				        </script>
				        </div>
						<%}else if(data.equals("day")){ %>
						<!-- 데일리 그래프 -->
						<script type="text/javascript">
						var labels = new Array();
						var data = new Array();
						<c:forEach items="${chartdata}" var="result" >
							labels.push("${result.rc_hour}");
							data.push("${result.rc_count}");
						</c:forEach>
						
						var ctx = document.getElementById('myChart').getContext('2d');
						var chart = new Chart(ctx, {
						    // The type of chart we want to create
						    type: 'line',

						    // The data for our dataset
						    data: {
						        labels: labels,
						        datasets: [{
						            label: '시간대별 손님 수',
						            borderColor: 'rgb(255, 99, 132)',
						            data: data
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
				        		<button type="button" onclick="location.href='chart?data=month';">일별 그래프로 전환</button>
				        	</div>
				        	
					        <div class="caldata">
					        <% 
					        	int i = 1;
					        %>
					        <form action="chart" method="get">
					        		<input type="hidden" name="data" value="day">
					        		<input type="hidden" name="c_id" value="<%= (String) session.getAttribute("userid")%>">
						        	 <select id="rc_no" name="rc_no" onchange="device(this.value)">
									<option selected="selected" value="--">------</option> 
											
									  </select>
									  <select id="rc_year" name="rc_year"  onchange="year(this.value)">
									  <option selected="selected" value="--">------</option> 
														  
									  </select>
									  <select id="rc_month" name="rc_month"  onchange="month(this.value)">
									  <option selected="selected" value="--">------</option> 
											
											  
									  </select>
									  <select id="rc_day" name="rc_day">
									  <option selected="selected" value="--">------</option> 
											
									  </select>
									  <input type="submit" value="검색">
								  </form>
					        </div>
					        
				        </div>
				        <script>
				        window.onload = function(){
				        	var i = 1;
				        	var pastck = null;
				        	 <c:forEach items="${searchdata}" var="result" >
				        	 	if(pastck==null || pastck != ${result.rc_no}){
				        	 		$('#rc_no').append("<option value=\"${result.rc_no}\">"+ i+"</option>");
				        	 	}
				        	 	pastck=${result.rc_no};
					     	</c:forEach>
				        }
				        
				        function device(str) {
				        	var value = $('#rc_no').val();
				     
				        	document.getElementById('rc_year').innerHTML="<option  value=\"--\">------</option>";
				        	document.getElementById('rc_month').innerHTML="<option  value=\"--\">------</option>";
				        	document.getElementById('rc_day').innerHTML="<option  value=\"--\">------</option>";
				        	var pastck = null;
				        	<c:forEach items="${searchdata}" var="result" >
				        	 	if(value == ${result.rc_no} && (pastck == null || pastck != ${result.rc_year})){
				        	 		$('#rc_year').append("<option  value=\"${result.rc_year}\">${result.rc_year}</option>");
				        	 	}
				        	 	pastck = ${result.rc_year}
				     		</c:forEach>

				        }
				        function year(str) {
				        	
				        	document.getElementById('rc_month').innerHTML="<option  value=\"--\">------</option>";
				        	document.getElementById('rc_day').innerHTML="<option  value=\"--\">------</option>";
				        	var value = $('#rc_no').val();
				        	var value2 = $('#rc_year').val();
				        	var pastck = null;
				        	<c:forEach items="${searchdata}" var="result" >
				        	 	if((value == ${result.rc_no} && value2 == ${result.rc_year}) && (pastck == null || pastck != ${result.rc_month})){
				        	 		$('#rc_month').append("<option  value=\"${result.rc_month}\">${result.rc_month}</option>");
				        	 	}
				        	 	pastck = ${result.rc_month}
				     		</c:forEach>

				        }
				        
						function month(str) {
				        	
				        	document.getElementById('rc_day').innerHTML="<option  value=\"--\">------</option>";
				        	var value = $('#rc_no').val();
				        	var value2 = $('#rc_year').val();
				        	var value3 = $('#rc_month').val();
				        	var pastck = null;
				        	<c:forEach items="${searchdata}" var="result" >
				        	 	if(((value == ${result.rc_no} && value2 == ${result.rc_year})&&value3 == ${result.rc_month}) && (pastck == null || pastck != ${result.rc_day})){
				        	 		$('#rc_day').append("<option  value=\"${result.rc_day}\">${result.rc_day}</option>");
				        	 	}
				        	 	pastck = ${result.rc_day}
				     		</c:forEach>

				        }
				       
				        </script>
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