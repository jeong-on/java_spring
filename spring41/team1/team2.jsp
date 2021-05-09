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
				type : 'POST',
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Authorization", "KakaoAK 2ebf137386d215f182afe9b7d8427b80");
					xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				}, // type
				url: "http://dapi.kakao.com/v2/vision/thumbnail/detect",
				data: {
					image_url: "../resources/img/tom.jpg",
					width: "200",
					height: "200"
				}, // data
				success: function(x) {
					console.log(x.result.thumbnail)
					alert('kakao연결 성공!' + x.result.thumbnail)
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