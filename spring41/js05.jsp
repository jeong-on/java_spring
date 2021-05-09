<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function web() {
	site = document.getElementById('site').value
	if (site == 'naver') {
		location.href = 'http://www.' + site + '.com'
	} else if (site == 'google') {
		location.href = 'http://www.' + site + '.com'
	} else if (site == 'daum') {
		location.href = 'http://www.' + site + '.net'
	}
	
}
function pay() {
	com = document.getElementById('com').value
	money = document.getElementById('money').value
	choice = document.getElementById('choice').value
	
	if (choice == 1) {
		choice = '계좌이체'
	} else if (choice == 2) {
		choice = '신용카드'
	} else if (choice == 3) {
		choice = '휴대폰 결제'
	}
	result = document.getElementById('result')
	result.innerHTML = com + '에서 ' + money + '원 ' + choice + '(으)로 구매하셨습니다.'
}
</script>
</head>
<body>
<input type="text" id="site" placeholder="naver, daum, google">
<button onclick="web()">사이트 이동 버튼</button><br>
<hr>
상점 : <input type="text" id="com"><br>
가격 : <input type="text" id="money"><br>
구매방식 : <input type="text" id="choice" placeholder="1)계좌이체, 2)신용카드, 3)휴대폰 결제 중 작성하세요."><br>
<button onclick="pay()">결과</button><br>
<div id="result"></div>
</body>
</html>