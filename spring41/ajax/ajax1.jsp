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
	$('#b1').click(function() {
		alert('b1버튼을 클릭함.!')
		// location.href="http://www.naver.com"
		// 순서대로 naver페이지를 호출하는 대표적인 방법
		// $ajax() 원할때 아무때나 특정한 페이지를 호출하는
		$.ajax()
		url: "test.jsp",
		success : function (result) {
			alert('test page 연결성공!!!')
			alert('test.jsp의 결과는') 
		},
		error: function() {
			alert('test page 연결실패!!!')
		}
	}
	
})
</script>
</head>
<body>
<button id="b1">ajax테스트해보자.</button>

</body>
</html>