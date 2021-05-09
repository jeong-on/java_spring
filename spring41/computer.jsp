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
			cpay = $('#compay').val()
			ctype = $('#comtype').val()
			mpay = $('#mousepay').val()
			mtype = $('#mousetype').val()
			
			price = parseInt(cpay + mpay)
			$.ajax({
				url:"computer",
				data: {
					compay : cpay,
					comtype : ctype,
					mousepay : mpay,
					mousetype : mtype,
					price: price,
				},
				success: function(x) {
					$("#result").html(x)
				}
			})
		})
	})
</script>
</head>
<body>
	컴퓨터 가격 : <input type="text" id="compay"><br>
	컴퓨터 종류 : <input type="text" id="comtype"><br>
	마우스 가격 : <input type="text" id="mousepay"><br>
	마우스 종류 : <input type="text" id="mousetype"><br>
	<input type="button" id="b1" value="결제하기">
	<div id="result"></div>
</body>
</html>