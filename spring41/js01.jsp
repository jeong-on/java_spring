<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
function go(x) {
	location.href = 'http://www.' + x + '.com'
}
function find(y) {
	location.href = 'https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=' + y
}
function know(y) {
	location.href = 'https://kin.naver.com/search/list.nhn?query=' + y
}
function arr() {
	name = ['홍길동','김길동','송길동','정길동']
	for (var i = 0; i < name.length; i++) {
		console.log(name[i])
	}
}
function data2() {
	data = document.getElementById('data').value
	console.log(data.length)
}
function data3() {
   pw1 = document.getElementById('pw1').value
   pw2 = document.getElementById('pw2').value
   result = document.getElementById('result')
   console.log(pw1 == pw2)
   pw3 = (pw1 == pw2)
   result.innerHTML = pw3 
}

</script>
</head>
<body>
<button onclick="add(100,200)">더하기 기능 처리</button><br>
<button onclick="min(300)">빼기 기능 처리</button><br>
<button onclick="alert('나는 window객체꺼')">윈도우 객체 함수 호출</button><br>
<button onclick="go(naver)">네이버로 이동</button><br>
<button onclick="find('자동차')">네이버에서 자동차 검색</button><br>
<button onclick="know('앤트로피')">네이버에서 지식인에서 엔트로피 검색</button><br>
<button onclick="arr()">배열에 넣고, 프린트</button><br>
<hr>
<input type="text" id="data" value="root">
<button onclick="data2()">id를 입력해서 유효성 검증</button><br>
<input type="text" id="pw1" value="1234"><br>
<input type="text" id="pw2" value="5678"><br>
<button onclick="data3()">pw가 동일한지 검증</button><br>
<div id="result" style="background:yellow; width:500px; height:200px; font-size: 100px;" ></div>

</body>
</html>