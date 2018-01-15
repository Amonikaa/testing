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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script type="text/javascript">
	$().ready(function() {
		$("#myform").validate({
			rules : {

				firstName : "required",
				lastName : "required",
				userEmail : "required",
				password : "required",
				localAddress : "required",
				permanentAddress : "required",
				state: "required",
				city: "required",
				mobileNumber : {
					required : true,
					number : true,
					maxlength : 9,
					minlength : 9
				},

			},

			messages : {
				firstName : " Name can not be blank",
				lastName : "Last Name can not be blank",
				userEmail : "Email can not be blank",
				password : "Password can not be blank",
				localAddress : "Local Address can not be blank",
				permanentAddress : "Permanent Address can not be blank",
				state: "State can not be blank",
				city: "City can not be blank",
				mobileNumber : {
					required : "Mobile Number can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 9 Characters Allowed",
					minlength : "Minimum 9 Characters Allowed"
				},
			}
		});
	});
</script>
<style>
.error {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">User Update</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form:form role="form" action="updateUser" method="POST"
										modelAttribute="user" id="myform">
										<div class="form-group">
											<label>First Name</label>
											<form:input path="firstName" class="form-control"
												placeholder="Enter First Name" id="firstName" />
											<form:hidden path="userId" class="form-control" />
										</div>

										<div class="form-group">
											<label>Last Name</label>
											<form:input path="lastName" class="form-control"
												placeholder="Enter Last Name " id="lastName" />
										</div>

										<div class="form-group">
											<label>Mobile</label>
											<form:input path="mobileNumber" class="form-control"
												placeholder="Enter Mobile Number " id="mobileNumber" />
										</div>

										<div class="form-group">
											<label>Email</label>
											<form:input path="userEmail" class="form-control"
												placeholder="Enter Email" id="userEmail" />

											<form:hidden path="password" class="form-control"
												placeholder="Enter Password" id="password" />
										</div>
										<%-- <div class="form-group">
											<label>Password</label>
											<form:hidden path="password" class="form-control"
												placeholder="Enter Password" id="password" />
										</div>  --%>

										<div class="form-group">
											<label>State:</label>

											<form:input path="state" class="form-control" type="text"
												id="state" maxlength="25" placeholder="State" />

										</div>

										<div class="form-group">
											<label>City:</label>

											<form:input path="city" class="form-control" type="text"
												id="city" maxlength="25" placeholder="City" />

										</div>


										<div class="form-group">
											<label>Local Address</label>
											<form:textarea path="localAddress" class="form-control"
												placeholder="Enter Local Address" id="localAddress" />

											<form:hidden path="permanentAddress"
												value="Edit Permanent Address" />
										</div>
										<%-- <div class="form-group">
											<label>Permanent Address</label>
											<form:textarea path="permanentAddress" class="form-control"
												placeholder="Enter Permanent Address" id="permanentAddress" />
										</div>
 --%>
										<button type="submit" class="btn btn-default">Submit
										</button>

									</form:form>
								</div>
							</div>
							<!-- /.row (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

</body>
</html>