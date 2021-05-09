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
         $.ajax({
            type: 'POST',
            beforeSend : function(xhr){
                  xhr.setRequestHeader("Authorization", "KakaoAK d6f791df86f8170b57cb81395f7a424b");
                  xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
              },
            url: "https://dapi.kakao.com/v2/vision/multitag/generate",
            data: {
               image_url: "https://i.pinimg.com/564x/f9/c5/c7/f9c5c7ce0b89ffa7e311bf3806cb4054.jpg"
            },
            success: function(x) {
               alert('kakao연결 성공.!!! ' + x.result.label_kr)
            } //success
         }) //ajax
      })//b1
   })//$fun
</script>
</head>
<body>
<button id="b1">XML문서 받아오기</button>
<button id="b2">JSON문서 받아오기</button>
</body>
</html>