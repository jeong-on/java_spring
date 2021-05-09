<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			alert('b1 클릭')
			$.ajax({
				url: "all",
				success: function(result) {
					alert('all2 연결 성공!')
					console.log('결과는 : ' + result)
					$(result).each(function(i,vo) {
						console.log(vo)
						$('div').append("타이틀 : " + vo.title + "내용 : " + vo.content)						
					}) // result.each
				}, // success
				error: function() {
					alert('연결 실패')
				}
			}) // ajax
		}) // b1
		$('#b2').click(function() {
			alert('b2 클릭')
			$.ajax({
				url: "all",
				success: function(result) {
					alert('all 연결 성공')
					console.log('결과는 : ' + result)
					$(result).each(function(i, vo) {
						console.log(vo)
						$('div').append("타이틀 : " + vo.title + "내용 : " + vo.content)
					}) // result.each
				}, // success
				error: function() {
					alert('연결 실패')
				} 
			}) // ajax
		}) // b2
	}) // function

</script>
</head>
<body>
<button id="b1">string으로 controller에서 받기</button>
<button id="b2">json으로 받기</button>
</body>
</html>