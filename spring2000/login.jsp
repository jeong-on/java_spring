<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<!-- view부분!! -->
<h3>회원 로그인</h3>
<hr color="red">
<form action="login.mega">
<!-- login.mega라는 가상의 주소를 사용
스프링이 그 주소로 매핑시키는 요청을 처리하기위한 메서드를 찾는다. -->
	아이디: <input type="text" name="id"><br>
	패스워드: <input type="text" name="pw"><br>
	패스워드 확인: <input type="text" name="pw2"><br>
	<input type="submit" value="로그인처리">
</form>
</body>
</html>