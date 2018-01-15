function checkMobileNumber(mobile) {
	$('#spanMobileNumber').hide();
	var mobileNumber = mobile;
	if (mobileNumber !== "") {
		$
				.ajax({
					url : "getMobileNumber",
					data : "mobileNumber=" + mobileNumber,
					type : "GET",
					success : function(msg) {
						if (msg === "Please Enter Another Contact Number.") {
							$('#spanMobileNumber').show();
							document.getElementById("spanMobileNumber").innerHTML = msg;
							document.getElementById("spanMobileNumber").style.color = "red";
							//document.getElementById("mobileNumber").value = "";
						/*	document.getElementById("mobileNumber").focus();*/

						} 
					}
				});
	} else {
		/*document.getElementById("mobileNumber").focus();*/

	}

}
// Get Email Id
function getEmail(emailId) {
	$('#spanEmail').hide();
	var email = emailId;
	if (email !== "") {
		$.ajax({
			url : "getEmail",
			data : "email=" + email,
			type : "GET",
			success : function(msg) {
				if (msg === "Please Enter Another Email Id.") {
					$('#spanEmail').show();
					document.getElementById("spanEmail").innerHTML = msg;
					document.getElementById("spanEmail").style.color = "red";
					/*document.getElementById("userEmail").value = "";*/
					/*document.getElementById("userEmail").focus();*/

				}/* else {
					document.getElementById("spanEmail").innerHTML = msg;
					document.getElementById("spanEmail").style.color = "green";
				}*/

			}
		});
	} else {
		/*document.getElementById("userEmail").focus();*/

	}

}
// For User Registration Form
$(document).ready(function() {
	$("#myform").validate({
		rules : {

			firstName : "required",
			lastName : "required",
			password : "required",
			state : "required",
			city : "required",
			
			confirmPassword : {
				equalTo : "#password"
			},
			check : "required",
			permanentAddress : "required",
			localAddress : "required",
			userEmail : {
				required : true
			},

			mobileNumber : {
				required : true,
				number : true,
				maxlength : 9,
				minlength : 9
				
			},
		},
		messages : {
			firstName : "First Name can't be blank",
			lastName : "Last Name can't be blank",
			password : "Password can't be blank",
			state : "State can't be blank",
			city : "city can't be blank",
			confirmPassword : {
				required : "Confirm Password can't be blank",
				equalTo : "Password Mis-match"
			},
			check : "*",
			localAddress : "Address can't be blank",
			userEmail : {
				required : "Email can't be blank"
			},
			mobileNumber : {
				required : "Contact Number can't be blank",
				number : "Only Numbers Allowed",
				maxlength : "Maximum 9 digit Allowed",
				minlength : "Minimum 9 digit Allowed"
			
			},
		}
	});
});

// For User Contact Form
$(document).ready(function() {
	$("#contctform").validate({
		rules : {

			name : "required",
			query : "required",
			email : {
				required : true
			},

		},
		messages : {
			name : "Name can't be blank",
			query : "Message can't be blank",
			email : {
				required : "Email can't be blank"
			},

		}
	});
});


//For User login form
$(document).ready(function() {
	$("#loginform").validate({
		rules : {

			password : "required",
			userEmail : {
				required : true
			},

		},
		messages : {
			password : "Password can't be blank",
			userEmail : {
				required : "Email can't be blank"
			},

		}
	});
});



$(document).ready(function() {
	$("#forgot").validate({
		rules : {
			userEmail : {
				required : true
			},

		},
		messages : {
			userEmail : {
				required : "Email can't be blank"
			},

		}
	});
});



