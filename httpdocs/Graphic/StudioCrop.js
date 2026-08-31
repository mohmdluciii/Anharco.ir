(function () {
    function $(id) { return document.getElementById(id); }
    function parseFit(raw) {
        var p = String(raw || "50|50|100").split("|");
        return {
            x: Math.max(0, Math.min(100, parseFloat(p[0]) || 50)),
            y: Math.max(0, Math.min(100, parseFloat(p[1]) || 50)),
            z: Math.max(40, Math.min(250, parseFloat(p[2]) || 100))
        };
    }
    function writeFit(hid, x, y, z) {
        if (hid) { hid.value = x + "|" + y + "|" + z; }
    }
    function isKeep(name) {
        return /\.(gif|ico|svg)$/i.test(name || "");
    }
    function blobToHidden(blob, hid) {
        if (!blob || !hid) { return; }
        var reader = new FileReader();
        reader.onload = function () {
            hid.value = String(reader.result || "");
        };
        reader.readAsDataURL(blob);
    }
    function toWebp(file, hid, done) {
        if (!file || isKeep(file.name)) {
            if (hid) { hid.value = ""; }
            if (done) { done(null); }
            return;
        }
        var img = new Image();
        img.onload = function () {
            var canvas = document.createElement("canvas");
            canvas.width = img.naturalWidth || img.width;
            canvas.height = img.naturalHeight || img.height;
            var ctx = canvas.getContext("2d");
            ctx.drawImage(img, 0, 0);
            if (canvas.toBlob) {
                canvas.toBlob(function (blob) {
                    blobToHidden(blob, hid);
                    if (done) { done(img); }
                }, "image/webp", 0.82);
            } else {
                try {
                    hid.value = canvas.toDataURL("image/webp", 0.82);
                } catch (ex) { }
                if (done) { done(img); }
            }
        };
        img.onerror = function () { if (done) { done(null); } };
        img.src = URL.createObjectURL(file);
    }
    function frameOf(stage) {
        var fit = (stage && stage.getAttribute("data-fit")) || "cover";
        var kind = (stage && stage.getAttribute("data-kind")) || "img";
        var shape = (stage && stage.getAttribute("data-shape")) || "rect";
        return { fit: fit, kind: kind, shape: shape };
    }
    function applyStage(stage, img, fit) {
        if (!stage || !img) { return; }
        var frame = frameOf(stage);
        var z = fit.z / 100;
        img.style.position = "absolute";
        img.style.left = "0";
        img.style.top = "0";
        img.style.width = "100%";
        img.style.height = "100%";
        img.style.maxWidth = "none";
        img.style.maxHeight = "none";
        img.style.margin = "0";
        img.style.padding = "0";
        img.style.objectFit = frame.fit === "contain" ? "contain" : "cover";
        img.style.objectPosition = fit.x + "% " + fit.y + "%";
        img.style.transformOrigin = fit.x + "% " + fit.y + "%";
        img.style.transform = z === 1 ? "none" : ("scale(" + z + ")");
        img.style.cursor = "grab";
        if (frame.kind === "bg") {
            stage.style.backgroundImage = "url('" + (img.currentSrc || img.src) + "')";
            stage.style.backgroundRepeat = "no-repeat";
            stage.style.backgroundPosition = fit.x + "% " + fit.y + "%";
            if (Math.abs(fit.z - 100) < 0.5) {
                stage.style.backgroundSize = frame.fit === "contain" ? "contain" : "cover";
            } else {
                stage.style.backgroundSize = fit.z + "% auto";
            }
            img.style.opacity = "0";
            img.style.pointerEvents = "none";
        } else {
            stage.style.backgroundImage = "none";
            img.style.opacity = "1";
            img.style.pointerEvents = "auto";
        }
        if (frame.shape === "circle") {
            stage.className = (stage.className || "").replace(/\bis-circle\b/g, "").replace(/\bis-round\b/g, "") + " is-circle";
        } else if (frame.shape === "round") {
            stage.className = (stage.className || "").replace(/\bis-circle\b/g, "").replace(/\bis-round\b/g, "") + " is-round";
        }
        if ((parseFloat(getComputedStyle(stage).getPropertyValue("--crop-h")) || 9) >
            (parseFloat(getComputedStyle(stage).getPropertyValue("--crop-w")) || 16)) {
            if ((" " + stage.className + " ").indexOf(" is-portrait ") < 0) {
                stage.className += " is-portrait";
            }
        }
    }
    function drawFitted(ctx, img, canvasW, canvasH, fit, mode) {
        var iw = img.naturalWidth || img.width;
        var ih = img.naturalHeight || img.height;
        if (!iw || !ih) { return; }
        var ir = iw / ih;
        var cr = canvasW / canvasH;
        var scale;
        if (mode === "contain") {
            scale = ir > cr ? (canvasW / iw) : (canvasH / ih);
        } else {
            scale = ir > cr ? (canvasH / ih) : (canvasW / iw);
        }
        scale *= (fit.z / 100);
        var dw = iw * scale;
        var dh = ih * scale;
        var dx = (canvasW - dw) * (fit.x / 100);
        var dy = (canvasH - dh) * (fit.y / 100);
        ctx.drawImage(img, dx, dy, dw, dh);
    }
    function bindStage(stage, img, hid, rngZ, rngX, rngY) {
        if (!stage || !img) { return; }
        var fit = parseFit(hid ? hid.value : "");
        if (rngZ) { rngZ.value = fit.z; }
        if (rngX) { rngX.value = fit.x; }
        if (rngY) { rngY.value = fit.y; }
        function paint() {
            applyStage(stage, img, fit);
        }
        if (img.complete) {
            paint();
        } else {
            img.onload = paint;
        }
        paint();
        function sync() {
            fit.z = rngZ ? parseFloat(rngZ.value) : fit.z;
            fit.x = rngX ? parseFloat(rngX.value) : fit.x;
            fit.y = rngY ? parseFloat(rngY.value) : fit.y;
            writeFit(hid, fit.x, fit.y, fit.z);
            applyStage(stage, img, fit);
        }
        if (rngZ) { rngZ.oninput = sync; }
        if (rngX) { rngX.oninput = sync; }
        if (rngY) { rngY.oninput = sync; }
        var drag = false, sx = 0, sy = 0, ox = 0, oy = 0;
        stage.onmousedown = function (ev) {
            drag = true;
            sx = ev.clientX;
            sy = ev.clientY;
            ox = fit.x;
            oy = fit.y;
            img.style.cursor = "grabbing";
            if (ev.preventDefault) { ev.preventDefault(); }
        };
        document.addEventListener("mousemove", function (ev) {
            if (!drag) { return; }
            var w = Math.max(1, stage.clientWidth);
            var h = Math.max(1, stage.clientHeight);
            fit.x = Math.max(0, Math.min(100, ox - ((ev.clientX - sx) / w) * 100));
            fit.y = Math.max(0, Math.min(100, oy - ((ev.clientY - sy) / h) * 100));
            if (rngX) { rngX.value = fit.x; }
            if (rngY) { rngY.value = fit.y; }
            writeFit(hid, fit.x, fit.y, fit.z);
            applyStage(stage, img, fit);
        });
        document.addEventListener("mouseup", function () {
            drag = false;
            img.style.cursor = "grab";
        });
        stage.onwheel = function (ev) {
            if (ev.preventDefault) { ev.preventDefault(); }
            var next = fit.z + (ev.deltaY < 0 ? 6 : -6);
            fit.z = Math.max(40, Math.min(250, next));
            if (rngZ) { rngZ.value = fit.z; }
            writeFit(hid, fit.x, fit.y, fit.z);
            applyStage(stage, img, fit);
        };
    }
    function cropVisible(stage, img, hidWebp) {
        if (!stage || !img || !img.naturalWidth) { return; }
        var frame = frameOf(stage);
        var cs = getComputedStyle(stage);
        var rw = parseFloat(cs.getPropertyValue("--crop-w")) || stage.clientWidth || 16;
        var rh = parseFloat(cs.getPropertyValue("--crop-h")) || stage.clientHeight || 9;
        var longSide = 1600;
        var canvas = document.createElement("canvas");
        if (rw >= rh) {
            canvas.width = longSide;
            canvas.height = Math.max(16, Math.round(longSide * rh / rw));
        } else {
            canvas.height = longSide;
            canvas.width = Math.max(16, Math.round(longSide * rw / rh));
        }
        var ctx = canvas.getContext("2d");
        var fit = parseFit((document.getElementById("hidFit") || {}).value);
        ctx.fillStyle = frame.fit === "contain" ? "#f4f7fb" : "#0b1730";
        ctx.fillRect(0, 0, canvas.width, canvas.height);
        drawFitted(ctx, img, canvas.width, canvas.height, fit, frame.fit);
        if (canvas.toBlob) {
            canvas.toBlob(function (blob) { blobToHidden(blob, hidWebp); }, "image/webp", 0.86);
        }
    }
    window.studioMediaInit = function () {
        var fu = $("fuFile") || $("fuPhoto");
        var hidWebp = $("hidWebp");
        var hidFit = $("hidFit");
        var img = $("imgPreview");
        var stage = $("cropStage");
        var rngZ = $("fitZoom");
        var rngX = $("fitX");
        var rngY = $("fitY");
        var btnCrop = $("btnCropApply");
        var btnReset = $("btnFitReset");
        if (stage && img) {
            bindStage(stage, img, hidFit, rngZ, rngX, rngY);
        }
        if (fu) {
            fu.setAttribute("accept", ".jpg,.jpeg,.png,.gif,.webp,.bmp,.ico,.svg");
            fu.onchange = function () {
                var file = fu.files && fu.files[0];
                if (!file) { return; }
                if (img) {
                    img.src = URL.createObjectURL(file);
                    img.style.display = "block";
                }
                toWebp(file, hidWebp, function () {
                    if (stage && img) {
                        bindStage(stage, img, hidFit, rngZ, rngX, rngY);
                    }
                });
            };
        }
        if (btnCrop) {
            btnCrop.onclick = function () {
                cropVisible(stage, img, hidWebp);
                return false;
            };
        }
        if (btnReset) {
            btnReset.onclick = function () {
                writeFit(hidFit, 50, 50, 100);
                if (rngZ) { rngZ.value = 100; }
                if (rngX) { rngX.value = 50; }
                if (rngY) { rngY.value = 50; }
                bindStage(stage, img, hidFit, rngZ, rngX, rngY);
                return false;
            };
        }
    };
    if (window.addEventListener) {
        window.addEventListener("load", window.studioMediaInit, false);
    } else if (window.attachEvent) {
        window.attachEvent("onload", window.studioMediaInit);
    }
})();
