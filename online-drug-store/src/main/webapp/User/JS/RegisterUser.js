
function enableButton()
{
	if(document.getElementById("agreeterms").checked==true){
        document.getElementById("submitc").disabled=false;
	}
	else{
        document.getElementById("submitc").disabled=true;	
	}
}