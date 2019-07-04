<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="css/log.css">
</head>
<script type="text/javascript">

</script>

<body>
	<form class="box" name="userInsertForm" action="join.action" method="post">
		<h1>화원가입</h1>
		<input title="공란으로두지 마시오" type="text" name ="c_id" required pattern="\w+" placeholder="유저 아이디">
		<input type="password" name="c_pass" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="form.pwd2.pattern = RegExp.escape(this.value);" placeholder="비밀번호">
		<input title="영어소문자+대문자+숫자으로 6자리 이상의 조합으로 만들어주세요" type="password" name="pwd2" placeholder="비밀번호 확인" onkeyup="checkUserPassword(this, 'equalsPasswordView');">
		<input title="공란으로두지 마시오" type="text" name ="c_name" placeholder="유저 이름">
		<input title="example@naver.com 형식으로 입력 부탁드립니다"  type="email" name ="c_email" placeholder="이메일">
		<input title="공란으로두지 마시오" type="text" name ="c_address" placeholder="주소">
		<input type="submit" name="" value="회원가입">
	</form>
</body>


</html>