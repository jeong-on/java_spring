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
		$('#b2').click(function() {
			$.ajax({
				url : 'money.jsp',
				data : {
					money : $('#money').val(),
					choice : $('#choice').val()
				},
				success : function(result) {
					alert('연결 성공 => ' + result)
				}
			})
		})
		$('#b3').click(function() {
			// $.ajax()		
		})
		$('#b4').click(function() {
			$.ajax({
				url : 'tel.jsp',
				data : {
					tel : $('#tel').val()
				},
				success : function(result) {
					num3 = result.trim()
					alert('연결 성공=> ' + result)
				}
			})
		})

		$('#b5').click(function() {
			num = $('#num').val()
			if (num == num3) {
				alert('인증성공.')
			} else {
				alert('인증실패.')
			}
		})
	})
</script>
</head>
<body>
	결제금액:
	<input id="money">
	<br> 결제수단: 1)계좌이체, 2)신용카드, 3)휴대폰결제
	<input id="choice">
	<button id="b2">결제하기(money.jsp)</button>
	<hr color="red">
	회원가입할 id입력:
	<input id="id">
	<button id="b3">ID중복 체크(check.jsp)</button>
	<hr color="red">
	인증받을 전화번호 입력:
	<input id="tel">
	<button id="b4">인증 번호 받기(test.jsp)</button>
	<br> 인증받은 숫자입력:
	<input id="num">
	<button id="b5">인증 번호 확인</button>


</body>
</html>