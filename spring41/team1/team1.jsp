<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "../resources/data/dataset (1).xml",
				success: function(xml) {
					alert('xml연결 성공!')
					list = $(xml).find('record')
					console.log('레코드의 개수=> ' + list.length)
					/* 	console.log($(list[0]).find('id').text())
						console.log($(list[0]).find('last_name').text())
						console.log($(list[0]).find('gender').text())
						console.log($(list[0]).find('phone').text()) */					
	               //last_name, gender, phone
	               // for문 이용해서 전체 1000개를 프린트!
					$(list).each(function(index, record) {
						console.log($(record).find('pnum').text())	
						console.log($(record).find('pname').text())	
						console.log($(record).find('cname').text())	
						console.log($(record).find('fname').text())	
						console.log($(record).find('lname').text())	
						console.log($(record).find('phone').text())	
					})
				} // success
			}) // ajax
		}) // b1
		$('#b2').click(function() {
			$.ajax({
				url: "../resources/data/MOCK_DATA (1).json",
				success: function(json) {
					alert('json연결 성공!' + json.length)
					// alert(json[0])
					$(json).each(function(index,product) { // 파라메터 이름 마음대로
						pnum = product.pnum
						pname = product.pname
						cname = product.cname
						fname = product.fname
						lname = product.lname
						phone = product.phone
						console.log(pnum, pname, cname, fname, lname, phone)
					})
				} // success
			}) // ajax
		}) // b2
	}) // fun
</script>
</head>
<body>
<button id="b1">XML문서 받아오기</button>
<button id="b2">JSON문서 받아오기</button>
</body>
</html>