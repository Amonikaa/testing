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

				oldPassword : "required",
				password : "required",
				confirmPassword : {
					equalTo : "#password"
				},

			},

			messages : {
				oldPassword : "Old Password can't be blank",
				password : "New Password can't be blank",
				confirmPassword : {
					equalTo : "Password Mis-match"
				},

			}
		});
	});
</script>
<script type="text/javascript">
	function getPassword(oldPassword) {
		$('#spanPassword').hide();
		if(oldPassword!=""){
		$.ajax({
					url : "getPassword",
					data : "oldPassword=" + oldPassword,
					type : "GET",
					success : function(msg) {
						if (msg === "Please Enter Correct Password.") {
							$('#spanPassword').show();
							document.getElementById("spanPassword").innerHTML = msg;
							document.getElementById("spanPassword").style.color = "red";
							return false;
						}

					}
				});
	}
	}
</script>
<style>
label.error {
    color: red;
    font-style: italic;
}

 .myform{
     margin-top: 5%;
     
 }
 .mylabel{
    margin-left: -31%;
    margin-top: 1%;
    float: left;
 }
</style>
</head>
<body>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
			<div style="color: red; margin-top: 1%;">${successMessage}</div>
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
								<div class="col-lg-6" style="margin-left: 29%;">
									<form:form role="form" action="changePassword" method="POST"
										modelAttribute="user" id="myform">
										<div class="form-group myform">
											<label class="mylabel">Old Password</label>
											<form:password path="oldPassword" class="form-control"
												placeholder="Enter Old Password" id="oldPassword"
												onblur="getPassword(this.value)" maxlength="30"/>
											<span id="spanPassword"></span>
											<form:hidden path="userId" value="${userSession.userId}"
												class="form-control" placeholder="Enter Title" />

										</div>
										<div class="form-group myform">
											<label class="mylabel">New Password</label>
											<form:password path="password" class="form-control" maxlength="30"
												placeholder="Enter New Password" id="password" />
										</div>

										<div class="form-group myform">
											<label class="mylabel">Confirm Password</label>
											<form:password path="confirmPassword" class="form-control"
												placeholder="Enter New Password" id="confirmPassword" maxlength="30"/>
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