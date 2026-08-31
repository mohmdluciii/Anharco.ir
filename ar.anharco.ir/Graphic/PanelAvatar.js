(function () {
    function pick(arr) {
        return arr[Math.floor(Math.random() * arr.length)];
    }
    function rnd(min, max) {
        return min + Math.random() * (max - min);
    }
    function makeSvg() {
        var bg = pick(["#7b5cff", "#12b0c9", "#ff8c42", "#ef476f", "#06d6a0", "#118ab2", "#ffd166", "#9b5de5", "#00bbf9", "#f15bb5"]);
        var skin = pick(["#ffe0bd", "#ffdbac", "#f1c27d", "#e0ac69", "#c68642", "#8d5524"]);
        var hair = pick(["#2b2d42", "#4a3728", "#f4d35e", "#9b2226", "#3a0ca3", "#1d3557", "#fb5607", "#8338ec"]);
        var cheek = "rgba(255,120,140,0.45)";
        var hairKind = Math.floor(Math.random() * 5);
        var acc = Math.floor(Math.random() * 7);
        var eyeKind = Math.floor(Math.random() * 3);
        var smile = Math.random() > 0.25;
        var hairPath = "";
        if (hairKind === 0) {
            hairPath = '<ellipse cx="32" cy="20" rx="22" ry="14" fill="' + hair + '"/>';
        } else if (hairKind === 1) {
            hairPath = '<path d="M10 28 C10 8 54 8 54 28 L50 22 C40 6 24 6 14 22 Z" fill="' + hair + '"/>';
        } else if (hairKind === 2) {
            hairPath = '<path d="M12 30 Q16 8 32 10 Q48 8 52 30 Q44 18 32 16 Q20 18 12 30" fill="' + hair + '"/>';
        } else if (hairKind === 3) {
            hairPath = '<circle cx="18" cy="20" r="10" fill="' + hair + '"/><circle cx="32" cy="14" r="11" fill="' + hair + '"/><circle cx="46" cy="20" r="10" fill="' + hair + '"/>';
        } else {
            hairPath = '<path d="M14 32 C8 10 56 10 50 32 C42 14 22 14 14 32" fill="' + hair + '"/>';
        }
        var accSvg = "";
        if (acc === 1) {
            accSvg = '<polygon points="14,18 8,2 24,14" fill="#ff8fab"/><polygon points="50,18 56,2 40,14" fill="#ff8fab"/><polygon points="14,16 11,6 22,14" fill="#ffc2d4"/><polygon points="50,16 53,6 42,14" fill="#ffc2d4"/>';
        } else if (acc === 2) {
            accSvg = '<polygon points="16,16 12,-2 24,14" fill="#6a4c93"/><polygon points="48,16 52,-2 40,14" fill="#6a4c93"/>';
        } else if (acc === 3) {
            accSvg = '<path d="M16 12 L20 2 L26 12 L32 0 L38 12 L44 2 L48 12 Z" fill="#ffd166" stroke="#f4a261" stroke-width="1"/>';
        } else if (acc === 4) {
            accSvg = '<ellipse cx="32" cy="10" rx="16" ry="6" fill="#3d5a80"/><rect x="28" y="-4" width="8" height="16" rx="3" fill="#3d5a80"/><rect x="30" y="-8" width="4" height="6" fill="#ffd166"/>';
        } else if (acc === 5) {
            accSvg = '<polygon points="8,10 10,16 4,13" fill="#fff59d"/><polygon points="56,8 58,14 52,11" fill="#fff59d"/><polygon points="50,48 52,54 46,51" fill="#fff59d"/>';
        } else if (acc === 6) {
            accSvg = '<path d="M8 28 C6 16 16 14 18 24" fill="none" stroke="' + hair + '" stroke-width="3"/><path d="M56 28 C58 16 48 14 46 24" fill="none" stroke="' + hair + '" stroke-width="3"/>';
        }
        var eyes;
        if (eyeKind === 0) {
            eyes = '<circle cx="24" cy="34" r="3.2" fill="#1d3557"/><circle cx="40" cy="34" r="3.2" fill="#1d3557"/><circle cx="25" cy="33" r="1" fill="#fff"/><circle cx="41" cy="33" r="1" fill="#fff"/>';
        } else if (eyeKind === 1) {
            eyes = '<ellipse cx="24" cy="34" rx="4" ry="3.4" fill="#fff"/><ellipse cx="40" cy="34" rx="4" ry="3.4" fill="#fff"/><circle cx="24" cy="34" r="2" fill="#3a0ca3"/><circle cx="40" cy="34" r="2" fill="#3a0ca3"/>';
        } else {
            eyes = '<path d="M20 34 Q24 30 28 34" fill="none" stroke="#1d3557" stroke-width="2" stroke-linecap="round"/><path d="M36 34 Q40 30 44 34" fill="none" stroke="#1d3557" stroke-width="2" stroke-linecap="round"/>';
        }
        var mouth = smile
            ? '<path d="M26 44 Q32 50 38 44" fill="none" stroke="#c1121f" stroke-width="2" stroke-linecap="round"/>'
            : '<ellipse cx="32" cy="45" rx="3.5" ry="2.2" fill="#c1121f"/>';
        var blush = '<ellipse cx="20" cy="40" rx="4" ry="2.2" fill="' + cheek + '"/><ellipse cx="44" cy="40" rx="4" ry="2.2" fill="' + cheek + '"/>';
        return '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">' +
            '<circle cx="32" cy="32" r="32" fill="' + bg + '"/>' +
            accSvg +
            '<circle cx="32" cy="36" r="18" fill="' + skin + '"/>' +
            hairPath +
            blush + eyes + mouth +
            '</svg>';
    }
    function paint() {
        var nodes = document.getElementsByClassName("memberPanel_Logo");
        var i, el;
        for (i = 0; i < nodes.length; i++) {
            el = nodes[i];
            el.style.backgroundImage = "none";
            el.innerHTML = makeSvg();
            el.title = "پروفایل";
        }
    }
    if (document.readyState === "loading") {
        if (window.addEventListener) {
            document.addEventListener("DOMContentLoaded", paint, false);
        } else {
            window.attachEvent("onload", paint);
        }
    } else {
        paint();
    }
})();
