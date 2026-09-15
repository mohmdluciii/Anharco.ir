<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bime_DetPerson.aspx.vb" Inherits="W_ISM.Bime_DetPerson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <script type ="text/javascript" src="jquery.js"></script>
      <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
      <style type ="text/css" >
        #myTable td
        {
            text-align :right ;
        }
        #myTable td:nth-child(even) 
	{
		background: #DEE5ED;
		
	}
	
	#myTable tr:nth-child(odd) 
	{
		background: #F3F8FC;
		
	}
	
	#myTable tr:nth-child(even) 
	{
		background: #F3F8FC;
		
	}
	
	#myTable tr:nth-child(odd) 
	{
		background: #F3F8FC;
		
	}
	
	#myTable th
	{
	    background :#6498FE;
	    color:#fff;
	}
	
	#myTable
	{
	    width :100%;
	    font-family:yekan;
	    font-size:11pt;
	}
	#myTable tr:hover {
  background-color: #ffa;
}

#myTable td, th {
  position: relative;
}

	
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position:relative ;top:0px;left:0px;width:100%;display:inline-block ;text-align :center ;">
        <div style="position:relative ;top:0px;width:100%;display:inline-block ">
            <asp:Label ID="lblList" runat ="server" ></asp:Label>
        </div>
        
    </div>
    </form>
</body>
</html>
