<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['커피', '아메리카노', '라떼', '콜드브루'],
          ['스타벅스', 4100, 4600, 4500],
          ['아티제', 4700, 5200, 4900],
          ['투썸', 4100, 4600, 4800],
          ['컴포즈', 1500, 2500, 2500]
        ]);

        var options = {
          chart: {
            title: '자주가는 카페 시장조사',
            subtitle: '아메리카노, 라뗴, 콜드브루 가격분석',
          },
          bars: 'vertical' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="barchart_material" style="width: 900px; height: 500px;"></div>
  </body>
</html>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>