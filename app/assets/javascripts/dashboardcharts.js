var assignedpiechart = function(assignedpiechartdata) {

var dataassigned = {
    labels: [
        "Assigned Assets",
        "Unassigned Assets"
    ],
    datasets: [
        {
            data: assignedpiechartdata,
            backgroundColor: [
                "#36A2EB",
                "#FF6384"
            ],
            hoverBackgroundColor: [
                "#36A2EB",
                "#FF6384"
            ]
        }]
};
  
  var optionsassigned = {
    legend: {
      display: false
    }
  };

  $('#assignedpiechart').remove();
  $('#assignedpiechartcontainer').append('<canvas id="assignedpiechart" style="max-height: 50px; max-width: 250px;"></canvas>');
    //draw the total gas usage bar chart
    var cty = document.getElementById("assignedpiechart").getContext("2d");
    cty.canvas.width  = 250;
    cty.canvas.height = 50;
var assignedpiechart = new Chart(cty, {
    type: 'pie',
    data: dataassigned,
    options: optionsassigned
});
};