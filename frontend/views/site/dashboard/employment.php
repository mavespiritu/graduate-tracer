<!-- Styles -->
<style>
#pie {
  width: 100%;
  height: 400px;
}
</style>

<!-- Chart code -->
<script>
am5.ready(function() {

// Create root element
// https://www.amcharts.com/docs/v5/getting-started/#Root_element
var root = am5.Root.new("pie");

// Set themes
// https://www.amcharts.com/docs/v5/concepts/themes/
root.setThemes([
  am5themes_Animated.new(root)
]);

// Create chart
// https://www.amcharts.com/docs/v5/charts/percent-charts/pie-chart/
var chart = root.container.children.push(
  am5percent.PieChart.new(root, {
    endAngle: 270
  })
);

// Create series
// https://www.amcharts.com/docs/v5/charts/percent-charts/pie-chart/#Series
var series = chart.series.push(
  am5percent.PieSeries.new(root, {
    valueField: "value",
    categoryField: "category",
    endAngle: 270
  })
);

series.states.create("hidden", {
  endAngle: -90
});

// Set data
// https://www.amcharts.com/docs/v5/charts/percent-charts/pie-chart/#Setting_data
series.data.setAll([{
  category: "Employed",
  value: <?= $respondents > 0 ? number_format($employedRespondents / $respondents, 2) : number_format(0, 2) ?>
}, {
  category: "Unemployed",
  value: <?= $respondents > 0 ? number_format($unemployedRespondents / $respondents, 2) : number_format(0, 2) ?>
}]);

series.appear(1000, 100);

}); // end am5.ready()
</script>

<!-- HTML -->
<div id="pie"></div>
<p><b><?= number_format($employedRespondents, 0) ?> of <?= number_format($respondents, 0) ?></b> respondents stated in the survey that they are currently employed <br>
<b><?= number_format($unemployedRespondents, 0) ?> of <?= number_format($respondents, 0) ?></b> respondents stated in the survey that they are currently unemployed</p>