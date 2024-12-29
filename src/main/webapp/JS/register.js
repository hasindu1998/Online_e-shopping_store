/**
 * 
 */

//compare password inputs.
function comparepwd(){
	
	var form = document.getElementById("regform");
	var submitbtn = document.getElementById("submitbtn");
	var error = document.getElementById("jserror");
	
	var password = form.password.value;
	var passwordagain = form.confirmpassword.value

	if(passwordagain !== "" && password !== passwordagain){
		
		error.innerHTML = "Passwords do not match";
		submitbtn.disabled = true;
	}
	else{
		submitbtn.disabled = false;
		error.innerHTML = "";
	}
	
}