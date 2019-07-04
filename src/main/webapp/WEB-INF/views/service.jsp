<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function() {
		err();
	};
	function err() {
		var message ='서비스 신청이 완료되었습니다. 설치가 완료되면 콘솔로 접근이 가능합니다.';
		console.log("성공");
		alert(message);
		history.back();
	};
</script>
</body>
</html>