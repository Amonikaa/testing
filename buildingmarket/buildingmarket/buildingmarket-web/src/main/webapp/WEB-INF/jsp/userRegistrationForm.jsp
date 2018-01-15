<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Building Market</title>
<style type="text/css">
.error {
	color: red;
	font-style: italic;
	padding-bottom: 2%;
}
</style>
<!-- Theme CSS -->
<link href="resources/css/form.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script type="text/javascript">
$(function() {
	  $('#checkNumber').on('keydown', '#mobileNumber', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})
</script>
</head>
<body id="page-top" class="index">
	<!-- Header -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="header">
		<div class="wrap">
			<div class="header-main">
				<div class="header-bottom">
					<div class="header-left green-headleft">
						<div class="header-left-top">
							<div class="sign-up">
								<h3>PLEASE REGISTER HERE</h3>
							</div>
							<div class="clear"></div>
						</div>
						<form:form class="form-horizontal" id="myform" name="myform"
							action="addUser" method="POST" modelAttribute="user"
							 novalidate="novalidate">
							<div class="header-left-bottom">
								<form:errors path="firstName" cssClass="error-msg" />
								<form:input path="firstName" class="user active"
									placeholder="First Name" maxlength="50" />
								<form:errors path="lastName" cssClass="error-msg" />
								<form:input path="lastName" class="user active"
									placeholder="Last Name" maxlength="50" />
								<form:errors path="userEmail" cssClass="error-msg" />
								<form:input path="userEmail" class="email active" id="userEmail"
									placeholder="Email" maxlength="80" onblur="getEmail(this.value);" />
                                <span id="spanEmail"></span>
								<form:errors path="password" cssClass="error-msg" />
								<form:password path="password" class="lock active"
									placeholder="Password" maxlength="15" />

								<form:errors path="password" cssClass="error-msg" />
								<form:password path="confirmPassword" class="lock active"
									placeholder="Confirm Password" maxlength="15" />

								<form:errors path="mobileNumber" cssClass="error-msg" />
								<div id="checkNumber" style="width: 100%">
									<input type="text" name="mobile" class="mobile user active"
										maxlength="13" style="width: 20%; float: left;"
										readonly="true" value="+61" />
									<form:input path="mobileNumber" class="active error add"
										id="mobileNumber" placeholder="Contact Number" maxlength="9"
										style="margin-left: 3%;width: 77%;" onblur="checkMobileNumber(this.value)"/>
										<span id="spanMobileNumber"></span> 
								</div>
								<form:errors path="localAddress" cssClass="error-msg" />
								<form:textarea path="localAddress" rows="4" cols="59"
									value="Address" placeholder="Address" maxlength="254" />

								<form:hidden path="permanentAddress" value="permanentAddress" />

								<br />
								<span class="checkbox1"> <label class="checkbox"><input
										type="checkbox" name="check" checked=""><i> </i>I Accept
										Terms & Conditions.</label>
								</span> <input type="submit" value="Sign up">
							</div>
						</form:form>
					</div>

					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>