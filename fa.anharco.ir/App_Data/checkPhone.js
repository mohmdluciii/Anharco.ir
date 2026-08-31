
	function checkPhone()
	{
		var flgOk=false
		if ((event.keyCode>=48) && (event.keyCode<=57))
		{
			flgOk=true;
		}
		if ((event.keyCode>=96) && (event.keyCode<=105))
		{
			flgOk=true;
		}
		if ((event.keyCode==9) ||(event.keyCode==8) || (event.keyCode==46) || (event.keyCode==110) || (event.keyCode==32) || (event.keyCode==109) || (event.keyCode==189))
		{
			flgOk=true;
		}
		if (flgOk==false)
		{
			event.returnValue=false;
		}
		
	}
