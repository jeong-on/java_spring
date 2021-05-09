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
				url: "resources/data/MOCK_DATA.json",
				success: function(xml) {
					alert('json연결 성공!' + json.length)
					
				} // success
			}) // ajax
		}) // b1
	}) // fun
</script>
</head>
<body>
<button id="b1">XML문서 받아오기</button>
<button id="b2">JSON문서 받아오기</button>
</body>
</html>