<h1 class="page-header">Overview</h1>
<div class="chart-size ct-chart ct-golden-section"></div>
<div class="sub-header table-responsive">
  <h2 class="page-header">Current Data</h2>
  <table class="table table-striped">
    <thead>
        <tr>

            <th>Hive Name</th>
            <th>Collection Date</th>
            <th>Sample Period</th>
            <th>Number of Mites</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
      <tr>
        <td>Hive 121</td>
        <td>1/2/16</td>
        <td>1</td>
        <td>6</td>
        <td>2 more than last time</td>
      </tr>
      <tr>
        <td>hive a</td>
        <td>2/4/16</td>
        <td>6</td>
        <td>1</td>
        <td>2	Less than last time</td>
      </tr>
      <tr>
        <td>tesing</td>
        <td>4/30/16</td>
        <td>4</td>
        <td>8</td>
        <td>Nada</td>
      </tr>
      <tr>
        <td>tesing again</td>
        <td>6/3/16</td>
        <td>9</td>
        <td>7</td>
        <td>getting better</td>
      </tr>
      <tr>
        <td>hive 345</td>
        <td>7/4/16</td>
        <td>4</td>
        <td>7</td>
        <td>nope</td>
      </tr>
      <tr>
        <td>hive 345</td>
        <td>7/4/16</td>
        <td>4</td>
        <td>7</td>
        <td>nope</td>
      </tr>
    </tbody>
  </table>
</div>
  <script>
    $(document).ready(function(){
      var data = {
        // A labels array that can contain any sort of values
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug','Sep','Oct','Nov','Dec'],
        // Our series array that contains series objects or in this case series data arrays
        series: [
          [5, 2, 4, 2, 0]
        ],
        high: 50,
        low: 0,

        axisY: {
          type: Chartist.AutoScaleAxis,

          onlyInteger: true
        }
      };

      // Create a new line chart object where as first parameter we pass in a selector
      // that is resolving to our chart container element. The Second parameter
      // is the actual data object.
      new Chartist.Line('.ct-chart', data);
    });
  </script>
