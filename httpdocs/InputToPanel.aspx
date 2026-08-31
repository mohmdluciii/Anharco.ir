<%@ Page Language="vb" AutoEventWireup="false" CodeFile="InputToPanel.aspx.vb" Inherits="InputToPanelLocal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ورود به پنل</title>
 <script type="text/javascript" src="jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <link href="Graphic/LoginPanel.css?v=login3" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
</head>
<body class ="Login_Person_Body Manager_Style loginModern">
    <canvas class="loginCanvas" id="loginCanvas"></canvas>
    <div class="loginGlow a"></div>
    <div class="loginGlow b"></div>
    <form id="form1" runat="server" defaultbutton="btn_go">
    <asp:HiddenField ID="hfMode" runat="server" />
        <div class="topBarBox">
            <asp:Image runat ="server" ID="name_Logo"  />
        </div>
        <div class ="topBarBox1">
            
        </div>
        <div class="topBarBox">
            
        </div>
        <div class ="middleContainerLogin">
            <div class ="middleBoxLogin">
                <div class ="logincenterBox">
                    <div class="loginBrand">
                        <img class="loginLogo" src="images/Anhar-Logo.png" alt="Anhar" />
                        <h1>ورود به پنل انهار</h1>
                        <p>مدیریت محتوا، کاربران و استودیو سایت</p>
                    </div>
                    <div class ="rightBox">
                        <asp:Button ID="btnModeManager" runat="server" Text="مدیر سامانه" CssClass="buttonStyle onMode" CausesValidation="false" UseSubmitBehavior="false" />
                        <asp:Button ID="btnModePerson" runat="server" Text="پرسنل مدیریتی" CssClass="buttonStyle" CausesValidation="false" UseSubmitBehavior="false" />
                    </div>
                    <div class ="leftBox">
                        
                        <p class ="p_caption">نام کاربری  <asp:Label ID="lblErr" style="color:#a20000;" runat ="server"  ></asp:Label>&nbsp;</p>
                        <p class ="p_TextBox"><asp:TextBox  TabIndex="1" ID="txtUID" runat ="server" AutoComplete="off" class="input_Text" MaxLength ="15" ></asp:TextBox></p>
                        <p class ="p_caption">رمز عبور</p>
                        <p class ="p_TextBox"><asp:TextBox TabIndex="2" ID="txtPWD" TextMode ="Password" runat ="server" class="input_Text"  MaxLength ="15"></asp:TextBox></p>
                        <asp:Panel ID="pnlCode" runat="server">
                        <p class ="p_caption">کد ورود</p>
                        <p class ="p_TextBox"><asp:TextBox  TabIndex="3" ID="txtcode" TextMode ="Password" runat ="server" class="input_Text"  MaxLength ="20"></asp:TextBox></p>
                        </asp:Panel>
                        <p class ="p_caption" style="height:10px;">کد امنیتی</p>
                        <p class ="p_TextBox"><a href='#' onclick="refrereshSecurityCode();"><i style="font-size:18px;color:#6498FE;" title="فراخوانی دوباره" class='fa fa-refresh'></i></a><iframe src="Captcha.aspx"  id="capCode" style ="height:55px;width:130px" frameborder ="0" scrolling ="no"  ></iframe> <br/><asp:TextBox  TabIndex ="4" autocomplete ="off" class="textFont" Height ="30" style="text-align :center;border-radius:0px;background:#fff;border:1px solid #6498FE;color:#6498FE;"  BackColor="#ffffff"  ID="txtSign" runat ="server" Width ="100" MaxLength="6"   ></asp:TextBox></p>
                        <p class ="p_TextBox"><asp:Button  TabIndex="5" ID="btn_go" runat ="server" Text="ورود" style="margin-top :5px;" class="btnLognStyle" /></p> 
                        <p class ="p_caption" style="font-size :8pt;"></p>
                        
                        
                    </div>
                    
                </div>
                <p class="loginFoot">Anhar Co. · پنل مدیریت</p>
                
            </div>
           
        </div>
        
    </form>
</body>
</html>
<script type="text/javascript" >
    $('#txtUID').bind("cut copy paste", function(e) {
        e.preventDefault();
    });

    $('#txtPWD').bind("cut copy paste", function(e) {
        e.preventDefault();
    });
    
</script>

<script type ="text/javascript" >
    function refrereshSecurityCode() {
        var f = document.getElementById("capCode");
        capCode.src = "Captcha.aspx";
    }
    (function(){
        var c = document.getElementById("loginCanvas");
        if (!c || !c.getContext) { return; }
        var ctx = c.getContext("2d");
        var dots = [];
        function resize() {
            c.width = window.innerWidth;
            c.height = window.innerHeight;
        }
        function spawn() {
            dots = [];
            var i, n = 48;
            for (i = 0; i < n; i++) {
                dots.push({
                    x: Math.random() * c.width,
                    y: Math.random() * c.height,
                    r: 1 + Math.random() * 2.2,
                    a: 0.12 + Math.random() * 0.35,
                    s: 0.15 + Math.random() * 0.45
                });
            }
        }
        function tick() {
            ctx.clearRect(0, 0, c.width, c.height);
            var g = ctx.createLinearGradient(0, 0, c.width, c.height);
            g.addColorStop(0, "#071428");
            g.addColorStop(0.55, "#0b2d71");
            g.addColorStop(1, "#063a55");
            ctx.fillStyle = g;
            ctx.fillRect(0, 0, c.width, c.height);
            var i;
            for (i = 0; i < dots.length; i++) {
                var d = dots[i];
                d.y -= d.s;
                if (d.y < -8) { d.y = c.height + 8; d.x = Math.random() * c.width; }
                ctx.beginPath();
                ctx.fillStyle = "rgba(255,255,255," + d.a + ")";
                ctx.arc(d.x, d.y, d.r, 0, Math.PI * 2);
                ctx.fill();
            }
            window.requestAnimationFrame(tick);
        }
        resize();
        spawn();
        tick();
        window.onresize = function() { resize(); spawn(); };
    })();
</script>
