<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- $('div').html('체크한 결과') -->
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('button').click(function() {
			pw1 = $('#pw1').val()
			pw2 = $('#pw2').val()
			div = $('div')
			if (pw1 == pw2) { 
				div.html('<h3 style=color:red;>암호 일치</h3>')
			} else {
				div.html('<h3 style=color:blue;>암호 불일치</h3>')
			}
		})
		$('#pw2').keyup(function() {
			pw1 = $('#pw1').val()
			pw2 = $('#pw2').val()
			div = $('div')
			if (pw1 == pw2) { 
				div.append('<h3 style=color:red;>암호 일치</h3>')
			} else {
				div.append('<h3 style=color:blue;>암호 불일치</h3>')
			}
		})
		$('#add').click(function() {
			reply = $('#reply').val()
			div2 = $('#addreply')
			div2.append('댓글 : ' + reply + '<br>')
			$('#reply').val('')
		})
	})
</script>
</head>
<body>
비밀번호1 : <input id="pw1"><br>
비밀번호2 : <input id="pw2"><br>
<button>패스워드 일치하는지 확인</button>
<hr>
댓글 : <input id="reply">
<input type="button" value="댓글추가" id="add">
<div id="addreply"></div><br>
<hr>
<div>아직 체크 안했음.</div>
</body>
</html>