<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0/js"></script>
<script type="text/javascript">
	$(function() {
		// body부분을 브라우저가 먼저 읽고 와서
		// RAM에 트리구조로 body부분을 만들어서 포함관계를 알 수 있음.
		// 부모, 자식간의 관계가 성립
		// Document Object Model(DOM) tree
		// 실행할 내용을 이름함수에 바로 넣어준다.
		// alert('body태그 안에 있는 요소들을 모두 읽어서 브라우저가')
		// 콜백함수
		// 태그이름 $('태그이름'), 클래스이름 $('.클래스이름')
		$('#button1').click(function() { // 태그이름 input
			// button 태그를 클릭했을때 입력값으로 들어온 함수 부분을 실행.
			// data = $('#input id').val() -> input id로 작성해줌
			data = $('#data2').val()
			alert('입력된 값은' + data)
		})
		$('#button2').click(function() {
			data3 = $('#data3').val()
			alert('입력된 값은' + data3)
		})
		
	}) // document.read()
	
</script>
</head>
<body>

</body>
</html>