/* Anhar panel - live clock for the dashboard top bar and hero.
   Fills #dashClock (top bar) and #dashClockBig / #dashClockDate (hero card). */
(function () {
    function pad(n) { return n < 10 ? "0" + n : "" + n; }
    var faDigits = ["۰", "۱", "۲", "۳", "۴", "۵", "۶", "۷", "۸", "۹"];
    function faNum(s) {
        return String(s).replace(/[0-9]/g, function (d) { return faDigits[+d]; });
    }
    function tick() {
        var now = new Date();
        var hh = pad(now.getHours()), mm = pad(now.getMinutes()), ss = pad(now.getSeconds());
        var time = faNum(hh + ":" + mm + ":" + ss);
        var top = document.getElementById("dashClock");
        var big = document.getElementById("dashClockBig");
        var dateEl = document.getElementById("dashClockDate");
        if (top) { top.textContent = time; }
        if (big) { big.textContent = time; }
        if (dateEl) {
            var d = "";
            try {
                d = now.toLocaleDateString("fa-IR", { weekday: "long", year: "numeric", month: "long", day: "numeric" });
            } catch (e) {
                d = faNum(now.toLocaleDateString());
            }
            dateEl.textContent = d;
        }
    }
    function start() {
        tick();
        window.setInterval(tick, 1000);
    }
    if (window.addEventListener) {
        window.addEventListener("load", start, false);
    } else if (window.attachEvent) {
        window.attachEvent("onload", start);
    }
})();