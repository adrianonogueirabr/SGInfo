<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Mes', 'Atendimentos'],
          ['Janeiro', 1000],
          ['Fevereiro', 1170],
          ['Março', 660],
          ['Abril', 1030],
          ['Maio', 1030],
          ['Junho', 1030],
          ['Julho', 1030]
        ]);

        var options = {
          chart: {
            title: 'ADM Informática',
            subtitle: 'Atendimentos: Janeiro a Julho de 2020',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 800px; height: 500px;"></div>
  </body>
</html>
