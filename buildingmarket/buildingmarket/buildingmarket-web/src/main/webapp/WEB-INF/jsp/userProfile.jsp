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
<title>DashBoard</title>
<style>
.error-msg {
	color: #ff0000;
	font-style: italic;
}
</style>
<style type="text/css">
.error {
	color: red;
	font-style: italic;
}
</style>
<link href="resources/css/form.css" rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
	<script type="text/javascript">
$(function() {
	  $('#contact').on('keydown', '#mobileNumber', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})
</script>
</head>
<body>
	<div id="wrapper">
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
				<div style="color: red;">${successMessage}</div>
					<div class="col-lg-12">
						<h1 class="page-header">Edit Profile</h1>
						<div class="">
							<h1></h1>
							<hr>
							<form:form modelAttribute="user" class="form-horizontal"
								id="myform" name="myform" role="form" action="userUpdateProfile"
								enctype="multipart/form-data" method="POST">
								<div class="row">
									<!-- left column -->
									<div class="col-md-3">
										<div class="text-center">
											<c:choose>
												<c:when test="${not empty base64Image}">
													<img src="${base64Image}" class="avatar img-circle"
														style="height: 133px; width: 109px;">
												</c:when>
												<c:otherwise>
													<img src="resources/dashboard/dist/images/profile.png"
														class="img-responsive img-circle"
														style="height: 133px; width: 109px;">
												</c:otherwise>
											</c:choose>
											<h6></h6>
											<input class="form-control" name="file" type="file">
										</div>
									</div>

									<!-- edit form column -->
									<div class="col-md-9 personal-info">


										<h3></h3>


										<div class="form-group">
											<label class="col-lg-3 control-label">First name:</label>
											<div class="col-lg-8">
												<form:input path="firstName" class="form-control"
													id="firstName" maxlength="25" placeholder="First name"
													type="text" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Last name:</label>
											<div class="col-lg-8">
												<form:input path="lastName" class="form-control" type="text"
													id="lastName" maxlength="25" placeholder="Last name" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-3 control-label">Email:</label>
											<div class="col-lg-8">
												<form:input path="userEmail" class="form-control"
													placeholder="Email" id="userEmail" maxlength="35"
													type="text" readonly="true" />

												<form:hidden path="userId" />

												<form:hidden path="password" />
											</div>
										</div>

										<%-- <div class="form-group">
											<label class="col-md-3 control-label">Password:</label>
											<div class="col-md-8">
												<form:input path="password" class="form-control"
													id="password" maxlength="15" placeholder="********" />
											</div>
										</div> --%>


										<div class="form-group" id="contact">
										<input type="text" name="mobile" class="form-control"
										maxlength="13" 
										readonly="true" value="+61" style="margin-left: 27%;width: 7%;margin-bottom: -5%;"/>
											<label class="col-md-3 control-label">Contact No.</label>
											<div class="col-md-8">
												<form:input path="mobileNumber" class="form-control"
													placeholder="Contact No." id="mobileNumber" maxlength="9" style="margin-left: 12%;width: 88%;" />

											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">State:</label>
											<div class="col-lg-8">
												<form:input path="state" class="form-control" type="text"
													id="state" maxlength="25" placeholder="State" />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">City:</label>
											<div class="col-lg-8">
												<form:input path="city" class="form-control" type="text"
													id="city" maxlength="25" placeholder="City" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-md-3 control-label">Address</label>
											<div class="col-md-8">
												<form:textarea path="localAddress" class="form-control"
													placeholder="Address" id="localAddress" maxlength="254" />

												<form:hidden path="permanentAddress"
													value="permanentAddress" />
											</div>
										</div>

										<%-- <div class="form-group">
											<label class="col-md-3 control-label">PermanentAddress</label>
											<div class="col-md-8">
												<form:textarea path="permanentAddress" class="form-control"
													id="permanentAddress" maxlength="254" />
											</div>
										</div> --%>

										<div class="form-group">
											<label class="col-md-3 control-label"></label>
											<div class="col-md-8">
												<input class="btn btn-primary" value="Save Changes"
													type="submit"> <span></span> <input
													class="btn btn-default" value="Cancel" type="reset">
											</div>
										</div>

									</div>
								</div>
							</form:form>
						</div>
						<hr>

					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->

			</div>

			<!-- /.container-fluid -->
		</div>

		<!-- /#page-wrapper -->
	</div>

</body>
</html>