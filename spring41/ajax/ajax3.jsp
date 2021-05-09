<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		// 1. b1을 클릭했을때,
		// 2. tel에 입력한 값을 가지고 와야함.
		// 3. mvc2에서는 controller에서 내가 넘긴 값을 받아서 다음 처리를 진행하게 함.
		// 4. ajax의 url은 컨트롤러의 requestMapping과 동일해야함
		$('#b1').click(function() {
			telval = $('#tel').val()
			$.ajax({
				url: "text",
				data: {
					tel : telval
				},
				success: function (x) 
					$('#result').html('<h3>' + x + '</h3>')
				}
			}) // ajax
		})	// b1
		$('#b2').click(function() {
			
		})
	}) 
</script>
</head>
<body>
	인증받을 전화번호 : <input id="tel"><input id="b1" type="button" value="인증번호 받기">
	인증받은 번호 넣어서 본인 확인 : <input id="num"><input id="b2" type="button">  
</body>
</html>