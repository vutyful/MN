function drawLineChart() {
    if ($("#lineChart").length) {
        ctxLine = document.getElementById("lineChart").getContext("2d");
        optionsLine = {
            scales: {
                yAxes: [
                    {
                        scaleLabel: {
                            display: true,
                            labelString: "Hits"
                        }
                    }
                ]
            }
        };

        // Set aspect ratio based on window width
        optionsLine.maintainAspectRatio =
            $(window).width() < width_threshold ? false : true;

        configLine = {
            type: "line",
            data: {
                labels: [
                    "2021-01-13",
                    "2021-01-04",
                    "2021-01-19",
                    "2021-01-29",
                    "2021-02-15",
                    "2021-02-24",
                    "2021-02-29"
                ],
                datasets: [
                    {
                        label: "Popular Hits",
                        data: [1.4, 1.2, 0.8, 1.9, 2.0, 2.1, 2.5],
                        fill: false,
                        borderColor: "rgba(255,99,132,1)",
                        lineTension: 0.1
                    }
                ]
            },
            options: optionsLine
        };

        lineChart = new Chart(ctxLine, configLine);
    }
}

function updateLineChart() {
    if (lineChart) {
        lineChart.options = optionsLine;
        lineChart.update();
    }
}