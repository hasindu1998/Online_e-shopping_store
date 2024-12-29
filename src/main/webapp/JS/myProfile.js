
//object for store details
var originalData = {};

function initializeOriginalData() {
        var form = document.getElementById("profileForm");

        // save original data when page loading first.
        originalData = {
            fname: form.fname.value,
			lname: form.lname.value,
            email: form.mail.value,
			contactno: form.telno.value,
			birthday: form.bday.value,
			address: form.address.value,
			city: form.city.value,
			province: form.province.value,
			country: form.country.value,
			postalcode: form.postalcode.value,
        };
		
}

// function to check if any input has changed
function checkChanges() {
	
        var form = document.getElementById("profileForm");
        var submitButton = document.getElementById("submitBtn");

        // compare current values with original value
        var hasChanges = (form.fname.value !== originalData.fname) ||
                         (form.lname.value !== originalData.lname) ||
						 (form.mail.value !== originalData.mail) ||
						 (form.telno.value !== originalData.telno) ||
						 (form.bday.value !== originalData.bday) ||
						 (form.address.value !== originalData.address) ||
						 (form.city.value !== originalData.city) ||
						 (form.province.value !== originalData.province) ||
						 (form.country.value !== originalData.country) ||
						 (form.postalcode.value !== originalData.postalcode);
                         
        // enable or disable the submit button based on changes
        submitButton.disabled = !hasChanges;
}

window.onload = initializeOriginalData;