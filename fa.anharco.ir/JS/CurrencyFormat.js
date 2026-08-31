
var c=0
function FormatCurrency(oname) {
    if ((event.keyCode < 48) || (event.keyCode > 57)) {
        if ((event.keyCode < 96) || (event.keyCode > 105)) {
            if ((event.keyCode != 8) && (event.keyCode != 46) && (event.keyCode != 39) && (event.keyCode != 37) && (event.keyCode != 9) && (event.keyCode != 110) && (event.keyCode != 190)) {
                event.returnValue = 0
                return;
            }
        }
    }
if  (event.keyCode==9){
    	return;
}

var f=oname
		var textFormat = "";
			var t=0;
			var str="";
			 for (var j = 0; j < f.value.length ; j++)
			{
				f.value=f.value.replace(',','');
			}
		
			str=f.value; 
			if (str.length != 0)
			{

				for (var k = str.length; k>=0 ; k--)
				{
					t++;
					if (t % 3 == 0)
					{
						 
						textFormat = "," + str.substr(k,1) + textFormat; 
					}
					 else 
					{
						textFormat =  str.substr(k,1) + textFormat;
					}	

					if (textFormat.substr(0,1) == ",")
					{ 
						f.value = textFormat.substr(1,textFormat.length-1);
					} 
					else { 
						f.value = textFormat;
					}
				}
			}

}

var c=0
function normalFormat(oname)
 {

var f=form1.oname
		var textFormat = "";
			var t=0;
			var str="";
			 for (var j = 0; j < f.value.length ; j++)
			{
				f.value=f.value.replace(',','');
			}
		
			str=f.value; 
			if (str.length != 0)
			{

				for (var k = str.length; k>=0 ; k--)
				{
					t++;
					if (t % 3 == 0)
					{
						 
						textFormat =  str.substr(k,1) + textFormat; 
					}
					 else 
					{
						textFormat =  str.substr(k,1) + textFormat;
					}	

					if (textFormat.substr(0,1) == ",")
					{ 
						f.value = textFormat.substr(1,textFormat.length-1);
					} 
					else { 
						f.value = textFormat;
					}
				}
			}

}
