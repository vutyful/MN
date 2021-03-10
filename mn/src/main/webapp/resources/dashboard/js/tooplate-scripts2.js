const width_threshold = 480;

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

function drawBarChart() {
    if ($("#barChart").length) {
        ctxBar = document.getElementById("barChart").getContext("2d");

        optionsBar = {
            responsive: true,
            scales: {
                yAxes: [
                    {
                        ticks: {
                            beginAtZero: true
                        },
                        scaleLabel: {
                            display: true,
                            labelString: "원"
                        }
                    }
                ]
            }
        };

        optionsBar.maintainAspectRatio =
            $(window).width() < width_threshold ? false : true;

        configBar = {
            type: "bar",
            data: {
                labels: ["사료/간식", "장난감", "병원", "미용/의류", "기타"],
                datasets: [
                    {
                        label: "누적 금액",
                        data: [12000, 19000, 3000, 50000, 22000],
                        backgroundColor: [
                            "rgba(255, 99, 132, 0.2)",
                            "rgba(54, 162, 235, 0.2)",
                            "rgba(255, 206, 86, 0.2)",
                            "rgba(75, 192, 192, 0.2)",
                            "rgba(153, 102, 255, 0.2)"
                        ],
                        borderColor: [
                            "rgba(255,99,132,1)",
                            "rgba(54, 162, 235, 1)",
                            "rgba(255, 206, 86, 1)",
                            "rgba(75, 192, 192, 1)",
                            "rgba(153, 102, 255, 1)"
                        ],
                        borderWidth: 1
                    }
                ]
            },
            options: optionsBar
        };

        barChart = new Chart(ctxBar, configBar);
    }
}

function drawPieChart() {
    if ($("#pieChart").length) {
        ctxPie = document.getElementById("pieChart").getContext("2d");
        optionsPie = {
            responsive: true,
            maintainAspectRatio: false
        };

        configPie = {
            type: "pie",
            data: {
                datasets: [
                    {
                        data: [4600, 5400],
                        backgroundColor: [
                            window.chartColors.purple,
                            window.chartColors.green
                        ],
                        label: "Storage"
                    }
                ],
                labels: ["Used: 4,600 GB", "Available: 5,400 GB"]
            },
            options: optionsPie
        };

        pieChart = new Chart(ctxPie, configPie);
    }
}

function updateChartOptions() {
    if ($(window).width() < width_threshold) {
        if (optionsLine) {
            optionsLine.maintainAspectRatio = false;
        }
        if (optionsBar) {
            optionsBar.maintainAspectRatio = false;
        }
    } else {
        if (optionsLine) {
            optionsLine.maintainAspectRatio = true;
        }
        if (optionsBar) {
            optionsBar.maintainAspectRatio = true;
        }
    }
}

function updateLineChart() {
    if (lineChart) {
        lineChart.options = optionsLine;
        lineChart.update();
    }
}

function updateBarChart() {
    if (barChart) {
        barChart.options = optionsBar;
        barChart.update();
    }
}

function reloadPage() {
    setTimeout(function() {
        window.location.reload();
    }); // Reload the page so that charts will display correctly
}

function drawCalendar() {
    if ($("#calendar").length) {
        $("#calendar").fullCalendar({
            height: 400,
            events: [
                {
                    title: "Meeting",
                    start: "2018-09-1",
                    end: "2018-09-2"
                },
                {
                    title: "Marketing trip",
                    start: "2018-09-6",
                    end: "2018-09-8"
                },
                {
                    title: "Follow up",
                    start: "2018-10-12"
                },
                {
                    title: "Team",
                    start: "2018-10-17"
                },
                {
                    title: "Company Trip",
                    start: "2018-10-25",
                    end: "2018-10-27"
                },
                {
                    title: "Review",
                    start: "2018-11-12"
                },
                {
                    title: "Plan",
                    start: "2018-11-18"
                }
            ],
            eventColor: "rgba(54, 162, 235, 0.4)"
        });
    }
}
