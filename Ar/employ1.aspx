<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="employ1.aspx.vb" Inherits="W_ISM.employ1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="StandardCSS.css"  type="text/css"  />
    <script type="text/javascript" src="checkNumber.js"></script>
    <script type="text/javascript" src="jquery.js"></script>

    <link rel="stylesheet" href="menu.css" type="text/css" media="screen" />
    <style type="text/css">
        a
        {
            text-decoration: none;
        }
        img
        {
            border: 0;
        }
    </style>
</head>
<body bgcolor="white">
    <form id="form1" runat="server">
       
               <table style="width :100%;position:absolute ;top:0px;left:0px;margin :0;" dir="rtl" cellpadding ="0" cellspacing="0" >
            <tr>
                <td><asp:Label ID="lblShow" runat ="server"  ></asp:Label> </td>
            </tr>
            <tr>
                <td>
                    <table  cellpadding ="2" cellspacing ="0" style="width :98%;font-size:9pt;font-family:Tahoma " dir="rtl">
                        <tr>

                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size:9pt;font-family :Tahoma;border:1px solid #000000" dir="rtl">
                                    <tr style="border-bottom :1px solid #000000">
                                        <td>نام : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="name_Employ" MaxLength ="50" runat ="server" Width="80" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td >نام خانوادگی : <b style="color:#a20000">*</b></td><td> <asp:TextBox  class="cinput" ID="lname_Employ" MaxLength ="60" runat ="server" Width="100" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>شماره شناسنامه : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="id_Employ" MaxLength ="10" runat ="server" Width="80" onkeypress="return isNumberKey(event)" ></asp:TextBox></td>
                                   </tr>
                                    <tr>

                                        <td >شماره ملی : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="meli_Employ" MaxLength ="10" onkeypress="return isNumberKey(event)" runat ="server" Width="100" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>محل صدور : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="sodor_Employ" MaxLength ="100" runat ="server" Width="120" ></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>تاریخ تولد : <b style="color:#a20000">*</b> </td><tr></tr><td colspan ="2"><asp:DropDownList   ID="cmb_dbirthdate_Employ" runat ="server" Width ="60" ></asp:DropDownList>/<asp:DropDownList ID="cmb_mbirthdate_Employ" runat ="server" Width ="60" ></asp:DropDownList>/<asp:DropDownList ID="cmb_ybirthdate_Employ" runat ="server" Width ="80" ></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td >جنسیت : <b style="color:#a20000">*</b> </td><td><asp:RadioButtonList AutoPostBack ="true"   class="cinput" ID="opt_sex_Employ" runat ="server" RepeatDirection ="Horizontal"  ><asp:ListItem Text ="مرد" Value ="1" ></asp:ListItem><asp:ListItem Text ="زن" Value="2" ></asp:ListItem></asp:RadioButtonList></td>
                                    </tr>
                                    <tr>

                                        <td>وضعیت تاهل : <b style="color:#a20000">*</b> </td><td><asp:RadioButtonList AutoPostBack="true"  class="cinput" ID="opt_tahol_Employ" runat ="server" RepeatDirection ="Horizontal"  ><asp:ListItem Text ="مجرد" Value ="1" ></asp:ListItem><asp:ListItem Text="متاهل" value="2"></asp:ListItem></asp:RadioButtonList></td>
                            
                                    </tr>
                                    <tr>
                                        <td>تعداد فرزند : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="child_Employ" MaxLength ="2"  onkeypress="return isNumberKey(event)" runat ="server" Width="50" ></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td >تابعیت : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="tabeiat_Employ" MaxLength ="100" runat ="server" Width="100" ></asp:TextBox></td>
                                    </tr>
                                    <tr>                
                                        <td>دین - مذهب : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="mazhab_Employ" MaxLength ="100" runat ="server" Width="120" ></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>محل تولد : <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="placeBirthdate_Employ" MaxLength ="100" runat ="server" Width="100" ></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size :9pt;font-family:Tahoma ;border:1px solid #000000" dir="rtl">
                                    <tr>
                                        <td >خدمت وظیفه : </td><td><asp:RadioButtonList  class="cinput" id="opt_vazifeh_Employ" runat ="server" RepeatDirection ="Horizontal" ><asp:ListItem Selected ="True"  text="انجام داده"  Value ="1"></asp:ListItem><asp:ListItem Text ="معاف" Value ="2" ></asp:ListItem></asp:RadioButtonList></td>
                                    </tr>
                                    <tr>

                                        <td colspan ="2">در صورت انجام خدمت زیر پرچم : </td>
                                        </tr>
                                        <tr>
                                        <td colspan ="3">
                                            <table style="width :100%">
                                                <tr>
                                                    <td>تاریخ شروع : <asp:DropDownList   ID="cmb_dsDateVazifeh_Employ" runat ="server" Width ="40" ></asp:DropDownList> /<asp:DropDownList ID="cmb_msDateVazifeh_Employ" runat="server"  Width="40"></asp:DropDownList>/  <asp:DropDownList  ID="cmb_ysDateVazifeh_Employ" runat ="server" Width ="60"></asp:DropDownList></td>
                                                    </tr><tr>
                                                    <td>تاریخ پایان : <asp:DropDownList   ID="cmb_dedateVazifeh_Employ" runat ="server" Width ="40" ></asp:DropDownList> /<asp:DropDownList ID="cmb_medateVazifeh_Employ" runat="server"  Width="40"></asp:DropDownList>/  <asp:DropDownList  ID="cmb_yedateVazifeh_Employ" runat ="server" Width ="60"></asp:DropDownList></td>            
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan ="2">در صورت معافیت از خدمت زیر پرچم : </td>
                                    </tr>
                                    <tr>

                                        <td>نوع معافیت : </td><td><asp:TextBox  class="cinput" ID="typeMoafiat_Employ" runat ="server" MaxLength ="100" Width ="100" ></asp:TextBox></td>
                                   </tr>
                                    <tr>

                                        <td>علت معافیت : </td></tr><tr><td colspan ="2"><asp:TextBox  class="cinput" ID="elatMoafiat_Employ" runat ="server" Width ="200" MaxLength="500"></asp:TextBox></td>
                                    </tr> 
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size :9pt;font-family:Tahoma;border:1px solid #000000 " dir="rtl">
                                     <tr>
                                        <td >آخرین مدرک تحصیلی :  <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="lastDoc_Employ" runat ="server" MaxLength ="200" Width ="100" ></asp:TextBox></td>
                                     </tr>
                                    <tr>

                                        <td>رشته تحصیلی :  <b style="color:#a20000">*</b> </td><td><asp:TextBox  class="cinput" ID="reshteDoc_Employ" runat ="server" MaxLength ="200" Width ="100" ></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>تاریخ اخذ :  <b style="color:#a20000">*</b> </td></tr><tr><td colspan ="2"><asp:DropDownList   ID="cmb_ddateDoc_Employ" runat ="server" Width ="60" ></asp:DropDownList>/<asp:DropDownList ID="cmb_mdateDoc_Employ" runat ="server" Width ="60" ></asp:DropDownList>/<asp:DropDownList ID="cmb_ydateDoc_Employ" runat ="server" Width ="80" ></asp:DropDownList></td>
                            
                                     </tr>
                                     <tr><td colspan="2">در صورت دانشجو بودن : </td></tr><tr><td>تاریخ اتمام تحصیل : </td></tr><tr><td colspan ="2"><asp:DropDownList ID="cmb_detmamTahsil_Employ" runat ="server" Width ="60" ></asp:DropDownList>/<asp:DropDownList ID="cmb_metmamTahsil_Employ" runat ="server" Width ="60" ></asp:DropDownList>/<asp:DropDownList ID="cmb_yetmamTahsil_Employ" runat ="server" Width ="80" ></asp:DropDownList></td></tr>
                                     <tr>
                                        <td >مقطع تحصیلی : </td><td><asp:TextBox ID="maghtaTahsili_Employ"  class="cinput" runat ="server" MaxLength ="100" Width ="100" ></asp:TextBox></td>
                                     </tr>
                                    <tr>

                                        <td>رشته تحصیلی : </td><td><asp:TextBox ID="ReshtehTahsili_Employ"  class="cinput" runat ="server" MaxLength ="200" Width ="100" ></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>شماره دانشجویی : </td><td><asp:TextBox ID="noDaneshJoei_Employ"  class="cinput" runat ="server" MaxLength ="200" Width ="100"  onkeypress="return isNumberKey(event)"></asp:TextBox></td>                            
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size :9pt;font-family:Tahoma;border:1px solid #000000 " dir="rtl">
                                    <tr>
                                        <td colspan ="6">وضعیت جسمانی : در صورت وجود هر نوع عارضه جسمی علت ، نحوه درمان و عوارض مربوطه به آن را توضیح داده شود .</td>
                                    </tr>
                                    <tr>
                                        <td colspan ="6"><asp:TextBox  class="cinput" ID="vazeiatJesmani_Employ" runat ="server" Width ="250" MaxLength ="500" ></asp:TextBox></td>
                                    </tr>            
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style="width :100%;font-size:9pt;font-family:Tahoma;border:1px solid #000000" dir="rtl">
                                    <tr>
                                        <td colspan ="3">
                                            <table style="width :100%;font-size:9pt;font-family:Tahoma ">
                                                <tr>
                                                    <td colspan ="5">آیا سابقه عضویت در بسیج ، انجمن ها و ارگان های مردم نهاد را دارید؟</td>
                                                </tr>
                                                <tr>
                                                    <td><asp:RadioButtonList  class="cinput" AutoPostBack ="true"   RepeatDirection ="Horizontal"  ID="opt_basij_Employ" runat ="server"><asp:ListItem Selected ="True"  Text ="خیر" Value ="1" ></asp:ListItem><asp:ListItem Text ="بلی" Value ="2" ></asp:ListItem></asp:RadioButtonList></td>
                                                </tr>
                                            <tr>

                                                    <td>نام ارگان : </td>
                                                    </tr>
                                                    <tr>
                                                    <td><asp:TextBox Enabled ="false"  class="cinput" runat ="server" ID="organ_Employ" Width ="100" MaxLength ="200" ></asp:TextBox></td>
                                               </tr>
                                    <tr>

                                                    <td>مدت سابقه : </td>
                                                    </tr>
                                                    <tr>
                                                    <td><asp:TextBox Enabled ="false"   class="cinput" runat ="server" ID="sabegeh_Employ" Width ="80" MaxLength ="20" ></asp:TextBox></td>
                                                </tr>
                                            </table>
                                        </td>
                                        </tr>
                                        <tr>
                                        <td colspan ="3">
                                            <table style="width :100%;font-size:9pt;font-family:Tahoma ">
                                                <tr>
                                                    <td colspan ="5">آیا عضو خانواده محترم شهدا ایثارگران و جانبازان هستید؟</td>
                                                </tr>
                                                <tr>
                                                    <td><asp:RadioButtonList AutoPostBack ="true"   class="cinput"  RepeatDirection ="Horizontal"  ID="opt_shohada_Employ" runat ="server"><asp:ListItem Selected ="True" Text ="خیر" Value ="1" ></asp:ListItem><asp:ListItem Text ="بلی" Value ="2" ></asp:ListItem></asp:RadioButtonList></td>
                                               </tr>
                                    <tr>

                                                    <td>توضیحات : </td>
                                                    </tr>
                                                    <tr>
                                                    <td colspan ="3"><asp:TextBox Enabled ="false"  class="cinput" runat ="server" ID="desShohada_Employ" Width ="250" MaxLength ="500" ></asp:TextBox></td>
                                                </tr>
                                            </table>
                                         </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size :9pt;font-family:Tahoma;border :1px solid #000000" dir="rtl">
                                    <tr>
                                        <td >نشانی دقیق محل سکونت :  <b style="color:#a20000">*</b> </td>
                                        </tr>
                                    <tr>

                                        <td colspan ="5"><asp:TextBox  class="cinput" runat ="server" ID="AddressHome_Employ" Width ="250" TextMode ="MultiLine"  ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>کد پستی : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox  class="cinput" ID="postalCode_Employ" runat ="server" Width ="100" MaxLength ="10"  onkeypress="return isNumberKey(event)" ></asp:TextBox></td>
                                        </tr>
                                    <tr>

                                        <td>شماره تلفن ثابت :  <b style="color:#a20000">*</b> </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox  class="cinput" ID="phone_Employ"  runat ="server" Width ="100" MaxLength ="20"  onkeypress="return isNumberKey(event)" ></asp:TextBox></td>
                                        </tr>
                                    <tr>

                                        <td>تلفن همراه :  <b style="color:#a20000">*</b> </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox  class="cinput" ID="mobile_Employ" runat ="server" Width ="100" MaxLength ="20"  onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size :9pt;font-family:Tahoma;border:1px solid #000000" dir="rtl">
                                    <tr>
                                        <td colspan ="2">شغل قبلی یا در حال حاضر (نام سازمان یا کارگاه ) : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox  class="cinput" ID="work_Employ" runat ="server" Width ="200" MaxLength="100" ></asp:TextBox></td>
                                        </tr>
                                    <tr>

                                        <td>میزان حقوق دریافتی : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox  class="cinput" ID="hoghogh_Employ" runat ="server" Width ="100" MaxLength ="100"  onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>آدرس محل کار : </td>
                                        </tr>
                                    <tr>

                                        <td colspan ="2"><asp:TextBox  class="cinput" id="workAddress_Employ" runat ="server" Width ="200px" MaxLength="500"></asp:TextBox></td>
                                        </tr>
                                    <tr>

                                        <td>علت تغییر شغل : </td>
                                        </tr>
                                    <tr>

                                        <td colspan ="2"><asp:TextBox  class="cinput" id="changeWork_Employ" runat ="server" Width ="200px" MaxLength="500"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width :100%;font-size :9pt;font-family:Tahoma;border:1px solid #000000 " dir="rtl">
                                    <tr>
                                        <td colspan ="6">تخصص و مهارت : در صورت داشتن تخصص یا دارا بودن مهارت ، مدارک و گواهینامه های صادره را ارائه و توضیح داده شود :</td>
                                    </tr>
                                    <tr>
                                        <td colspan ="6"><asp:TextBox  class="cinput" ID="skills_Employ" runat ="server" Width ="250" MaxLength ="1000" Height ="40" TextMode ="MultiLine" style="resize:none" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan ="6">معرف : یک نفر کارمند  رسمی دولت با تصویر آخرین حکم کارگزینی و گواهی اشتغال بکار یا تصویر حکم بازنشستگی ( در خصوص افراد بازنشته )</td>
                                    </tr>
                                    <tr>
                                        <td>نام و نام خانوادگی : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox runat ="server"  class="cinput" ID="nameMoaref_Employ" Width ="150" MaxLength ="120" ></asp:TextBox></td>
                                        </tr>
                                    <tr>

                                        <td>شغل : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox runat ="server"  class="cinput" ID="workMoaref_Employ" Width ="100" MaxLength ="200" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>تلفن ثابت : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox runat ="server"  class="cinput" ID="phoneMoaref_Employ" Width ="100" MaxLength ="200"  onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                        </tr>
                                    <tr>

                                        <td>تلفن همراه : </td>
                                        </tr>
                                    <tr>

                                        <td><asp:TextBox runat ="server"  class="cinput" ID="mobileMoaref_Employ" Width ="100" MaxLength ="200"  onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding ="10" style ="width:100%;font-size :9pt;font-family:Tahoma;border:1px solid #000000" dir="rtl">
                                    <tr>
                                        <td>نوع شغل مورد نظر :  <b style="color:#a20000">*</b> </td>
                                        </tr>
                                    <tr>

                                        <td colspan ="2"><asp:TextBox  class="cinput" ID="typework_Employ" runat ="server" Width ="200" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>تصویر پرسنلی :   </td>
                                        </tr>
                                    <tr>

                                        <td colspan="4"><asp:FileUpload  class="cinput" ID="pic_Employ" runat ="server" Width="250px" /></td>
                                    </tr> 
                                    <tr>
                                        <td>فایل رزومه :   </td>
                                        </tr>
                                    <tr>

                                        <td colspan="4"><asp:FileUpload  class="cinput" ID="file_Employ" runat ="server" Width="250px" /></td>
                                    </tr>            
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td  align ="left" >
                                <asp:Button class="cinput" runat="server" ID="btn_Save" ForeColor="#ffffff" Font-Names="tahoma" Font-Size="9pt" Style="background-color: #FF791D; border: 0.1px solid #ffffff" Text="ارسال اطلاعات" onmouseover="this.style.backgroundColor='#6F706B'" onmouseout="this.style.backgroundColor='#FF791D'" Height="33px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>   
        </table>
       
    </form>
</body>
</html>
