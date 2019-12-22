function validate()
{
	var txtName=document.getElementById("txtName");
	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	var txtEmail=document.getElementById("txtEmail");
	var phoneno = /^\(?([7-9]{1})\)??([0-9]{9})$/;
	var txtPhone= document.getElementById("txtPhone");
	var txtNofam =document.getElementById("txtNofam");
	var valid=true;
	
	document.getElementById("etxtName").style.visibility="hidden";
	document.getElementById("etxtEmail").style.visibility = "hidden";
	document.getElementById("etxtPhone").style.visibility = "hidden";
	document.getElementById("etxtNofam").style.visibility="hidden";
	if(txtName.value.length<=0)
		{
		document.getElementById("etxtName").style.visibility="visible";
		valid=false;
		}
	if(txtEmail.value.length<=0)
	{
	 document.getElementById("etxtEmail").style.visibility = "visible";
	 valid=false;
	}
	 if(emailPattern.test(txtEmail.value)==false )
		{
		document.getElementById("etxtEmail").style.visibility = "visible";
		valid=false;
		}
	 if(txtPhone.value.length<=0)
		{
		 document.getElementById("etxtPhone").style.visibility = "visible";
		 valid=false;
		}
	 if(txtNofam.value.length<=0)
		 {
		 document.getElementById("etxtNofam").style.visibility= "visible";
		 valid=false;
		 }
	return valid;
	
}
