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
		$('#add').click(function() {
			reply = $('#reply').val()
			div = $('div')
			div.append('댓글 : ' + reply)
			$('#reply').val('')
		})
		$('#chip').click(function() {
			div = $('div')
	        img = '<img width=100 height=100 src=resources/img/chip.png>'
	        div.append(img)
	      }) //car2
		$('#imgre').click(function() {
			imgre = $('#reply').val()
			div = $('div')
			img = '<img width=100 height=100 src=resources/img/chip.png>'
	        div.append(img + '댓글 : ' + imgre)
			$('#reply').val('')
		})
	      
	})
</script>
</head>
<body>
댓글 : <input id="reply">
<input type="button" value="댓글추가" id="add">
<input type="button" value="이미지추가" id="chip">
<input type="button" value="댓글과 이미지추가" id="imgre">
<hr>
<div id="add"></div>
</body>
</html>