<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
function plus() {
	n1 = parseInt(document.getElementById('s1').value)
	n2 = parseInt(document.getElementById('s2').value)
	sum = n1 + n2
	alert(sum)
}
function img() {
	name = document.getElementById('pic').value
	result = document.getElementById('result')
	result.innerHTML = '<img src = "resources/img/' + name + '.png">'
}
</script>
</head>
<body>
숫자 1 : <input type="text" id="s1"><br>
숫자 2 : <input type="text" id="s2"><br>
<button onclick="plus()">더하기 버튼</button><br>
<hr>
<input id="pic">
<button onclick="img()">이미지 찾는 버튼</button>
<div id="result"></div>
</body>
</html>