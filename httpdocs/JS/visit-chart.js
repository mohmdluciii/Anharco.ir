(function () {
    function ready(fn) {
        if (document.readyState === "loading") {
            document.addEventListener("DOMContentLoaded", fn);
        } else {
            fn();
        }
    }

    function faNum(n) {
        try {
            return Number(n).toLocaleString("fa-IR");
        } catch (e) {
            return String(n);
        }
    }

    function animateNums() {
        var nodes = document.querySelectorAll(".visitCard b[data-n]");
        var i;
        for (i = 0; i < nodes.length; i++) {
            (function (el) {
                var target = parseInt(el.getAttribute("data-n"), 10) || 0;
                var start = 0;
                var t0 = new Date().getTime();
                var dur = 900;
                function tick() {
                    var p = (new Date().getTime() - t0) / dur;
                    if (p >= 1) {
                        el.innerHTML = faNum(target);
                        return;
                    }
                    el.innerHTML = faNum(Math.round(target * (1 - Math.pow(1 - p, 3))));
                    if (window.requestAnimationFrame) {
                        window.requestAnimationFrame(tick);
                    } else {
                        setTimeout(tick, 16);
                    }
                }
                tick();
            })(nodes[i]);
        }
    }

    function lineChart(data) {
        var canvas = document.getElementById("visitLineChart");
        if (!canvas || typeof Chart === "undefined") {
            return;
        }
        var ctx = canvas.getContext("2d");
        var w = canvas.parentNode.clientWidth || 640;
        function mkGrad(c1, c2) {
            var g = ctx.createLinearGradient(0, 0, 0, 240);
            g.addColorStop(0, c1);
            g.addColorStop(1, c2);
            return g;
        }
        new Chart(ctx, {
            type: "line",
            data: {
                labels: data.labels,
                datasets: [
                    {
                        label: "فارسی",
                        data: data.fa || [],
                        borderColor: "#0b2d71",
                        backgroundColor: mkGrad("rgba(11,45,113,0.25)", "rgba(11,45,113,0.01)"),
                        borderWidth: 2.5,
                        pointRadius: 3,
                        pointHoverRadius: 6,
                        pointBackgroundColor: "#fff",
                        pointBorderColor: "#0b2d71",
                        pointBorderWidth: 2,
                        lineTension: 0.35
                    },
                    {
                        label: "العربية",
                        data: data.ar || [],
                        borderColor: "#0066b2",
                        backgroundColor: mkGrad("rgba(0,102,178,0.22)", "rgba(0,102,178,0.01)"),
                        borderWidth: 2.5,
                        pointRadius: 3,
                        pointHoverRadius: 6,
                        pointBackgroundColor: "#fff",
                        pointBorderColor: "#0066b2",
                        pointBorderWidth: 2,
                        lineTension: 0.35
                    },
                    {
                        label: "English",
                        data: data.en || [],
                        borderColor: "#e6b400",
                        backgroundColor: mkGrad("rgba(230,180,0,0.25)", "rgba(230,180,0,0.01)"),
                        borderWidth: 2.5,
                        pointRadius: 3,
                        pointHoverRadius: 6,
                        pointBackgroundColor: "#fff",
                        pointBorderColor: "#e6b400",
                        pointBorderWidth: 2,
                        lineTension: 0.35
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                animation: { duration: 1400, easing: "easeOutQuart" },
                legend: {
                    display: true,
                    position: "bottom",
                    rtl: true,
                    textDirection: "rtl",
                    labels: { boxWidth: 12, fontFamily: "Tahoma", fontSize: 12, padding: 16 }
                },
                tooltips: {
                    rtl: true,
                    textDirection: "rtl",
                    backgroundColor: "rgba(11,45,113,0.92)",
                    titleFontFamily: "Tahoma",
                    bodyFontFamily: "Tahoma",
                    cornerRadius: 8,
                    xPadding: 12,
                    yPadding: 10
                },
                scales: {
                    xAxes: [{
                        gridLines: { display: false },
                        ticks: { fontFamily: "Tahoma", fontSize: 11, maxRotation: 0, autoSkip: true, maxTicksLimit: 7 }
                    }],
                    yAxes: [{
                        gridLines: { color: "rgba(11,45,113,0.08)", zeroLineColor: "rgba(11,45,113,0.12)" },
                        ticks: { beginAtZero: true, precision: 0, fontFamily: "Tahoma", fontSize: 11, callback: function (v) { return faNum(v); } }
                    }]
                }
            }
        });
        canvas.style.maxWidth = w + "px";
    }

    function donutChart(data) {
        var canvas = document.getElementById("visitDonutChart");
        if (!canvas || typeof Chart === "undefined") {
            return;
        }
        var fa = data.langs[0] || 0;
        var ar = data.langs[1] || 0;
        var en = data.langs[2] || 0;
        var labels = ["فارسی", "العربية", "English"];
        var values = [fa, ar, en];
        var colors = ["#0b2d71", "#0066b2", "#ffcc0a"];
        if (fa + ar + en === 0) {
            labels = ["هنوز بازدیدی ثبت نشده"];
            values = [1];
            colors = ["#d7e4f4"];
        }
        new Chart(canvas.getContext("2d"), {
            type: "doughnut",
            data: {
                labels: labels,
                datasets: [{
                    data: values,
                    backgroundColor: colors,
                    borderWidth: 0,
                    hoverBorderWidth: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                cutoutPercentage: 64,
                animation: { animateRotate: true, duration: 1200 },
                legend: {
                    display: true,
                    position: "bottom",
                    rtl: true,
                    textDirection: "rtl",
                    labels: { boxWidth: 12, fontFamily: "Tahoma", fontSize: 12, padding: 14 }
                },
                tooltips: {
                    rtl: true,
                    textDirection: "rtl",
                    backgroundColor: "rgba(11,45,113,0.92)",
                    titleFontFamily: "Tahoma",
                    bodyFontFamily: "Tahoma",
                    cornerRadius: 8,
                    callbacks: {
                        label: function (item, chart) {
                            var ds = chart.datasets[0].data;
                            var val = ds[item.index];
                            var sum = 0;
                            var i;
                            for (i = 0; i < ds.length; i++) {
                                sum += ds[i];
                            }
                            if (sum === 0) {
                                return chart.labels[item.index];
                            }
                            return chart.labels[item.index] + "  " + faNum(val);
                        }
                    }
                }
            }
        });
    }

    ready(function () {
        animateNums();
        var data = window.ANHAR_VISITS;
        if (!data) {
            return;
        }
        lineChart(data);
        donutChart(data);
    });
})();
