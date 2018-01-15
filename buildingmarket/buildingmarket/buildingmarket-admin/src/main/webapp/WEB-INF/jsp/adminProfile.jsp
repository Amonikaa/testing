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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript">
	$().ready(function() {
		$("#adminprofile").validate({
			rules : {
				name : "required",
				lastName : "required",
				adminPassword : "required",
				adminEmail : {
					required : true
				},

			},

			messages : {
				name : "Name can not be blank",
				lastName : "Last name can not be blank",
				adminPassword : "Password can not be blank",
				userEmail : {
					required : "Email can not be blank"
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
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Edit Profile</h1>
						<div class="">
							<h1></h1>
							<hr>
							<form:form modelAttribute="admin" class="form-horizontal"
								id="adminprofile" role="form" action="updateAdmin"
								enctype="multipart/form-data" method="POST">
								<div class="row">
									<!-- left column -->
									<div class="col-md-3">
										<div class="text-center">
											<%-- <c:if test="${admin.adminId}">
										<img src="resources/dist/images/profile.png"
											class="avatar img-circle" alt="avatar">
											</c:if> --%>
											<img src="${base64Image}" class="avatar img-circle"
												style="height: 133px; width: 109px;">
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
												<form:input path="name" class="form-control" id="name"
													value="${admin.name}" type="text"  maxlength="35"/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Last name:</label>
											<div class="col-lg-8">
												<form:input path="lastName" class="form-control"
													id="lastName" value="${admin.lastName}" type="text" maxlength="35" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-3 control-label">Email:</label>
											<div class="col-lg-8">
												<form:input path="adminEmail" class="form-control"
													value="${admin.adminEmail}" type="text" id="adminEmail" maxlength="35"/>

												<form:hidden path="adminId" value="${admin.adminId}" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-md-3 control-label">Password:</label>
											<div class="col-md-8">
												<form:password path="adminPassword" class="form-control"
													id="adminPassword" maxlength="15"
													value="${admin.adminPassword}" />
											</div>
										</div>

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