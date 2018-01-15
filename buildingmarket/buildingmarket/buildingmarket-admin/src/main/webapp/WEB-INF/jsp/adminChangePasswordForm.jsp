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
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript">
	$().ready(function() {
		$("#myform").validate({
			rules : {

				oldPassword : "required",
				adminPassword : "required",
				confirmPassword : {
					equalTo : "#adminPassword"
				},

			},

			messages : {
				oldPassword : " Old Password can not be blank",
				adminPassword : "New Password can not be blank",
				confirmPassword : {
					equalTo : "Password Mis-match"
				},

			}
		});
	});
</script>
<script type="text/javascript">
	function getPassword(oldPassword) {
		$
				.ajax({
					url : "getPassword",
					data : "oldPassword=" + oldPassword,
					type : "GET",
					success : function(msg) {
						if (msg === "Please Enter Correct Password.") {
							document.getElementById("spanPassword").innerHTML = msg;
							document.getElementById("spanPassword").style.color = "red";
							document.getElementById("oldPassword").value = "";
							document.getElementById("oldPassword").focus();

						} else {
							document.getElementById("spanPassword").innerHTML = msg;
							document.getElementById("spanPassword").style.color = "green";
						}

					}
				});

	}
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
					<h1 class="page-header">Change Password</h1>
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
									<form:form role="form" action="changePassword" method="POST"
										modelAttribute="admin" id="myform">
										<div class="form-group">
											<label>Old Password</label>
											<form:password path="oldPassword" class="form-control"
												placeholder="Enter Old Password" id="oldPassword"
												onblur="getPassword(this.value)" />
											<span id="spanPassword"></span>
											<form:hidden path="adminId" value="${adminSession.adminId}"
												class="form-control" placeholder="Enter Title" />

										</div>
										<div class="form-group">
											<label>New Password</label>
											<form:password path="adminPassword" class="form-control" maxlength="15"
												placeholder="Enter New Password" id="adminPassword" />
										</div>

										<div class="form-group">
											<label>Confirm Password</label>
											<form:password path="confirmPassword" class="form-control"
												placeholder="Enter New Password" id="confirmPassword" />
										</div>

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