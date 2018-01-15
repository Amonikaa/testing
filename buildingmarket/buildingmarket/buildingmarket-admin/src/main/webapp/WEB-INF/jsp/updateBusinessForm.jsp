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
<script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script type="text/javascript">
	$().ready(function() {
		$("#mybusinessform").validate({
			rules : {

				busniessType : "required",
				companyName : "required",
				nameOfOwner : "required",
				ownerContact : {
					required : true,
					number : true,
					maxlength : 9,
					minlength : 9
				},
				companyAddress : "required",

			},
			messages : {
				busniessType : "Busniess Type can not be blank",
				companyName : "Company Name can not be blank",
				nameOfOwner : "Name can not be blank",
				ownerContact : {
					required : "Mobile Number can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 9 Characters Allowed",
					minlength : "Minimum 9 Characters Allowed"
				},
				companyAddress : "Company Address can not be blank",

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
					<h1 class="page-header">Busniess</h1>
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
									<form:form role="form" action="updateBusinessProduct"
										method="POST" modelAttribute="business" id="mybusinessform">
										<div class="form-group">
											<label>Busniess Type</label>
											<form:input path="busniessType" class="form-control"
												maxlength="95" placeholder="Enter Busniess Type"
												id="busniessType" />

											<form:hidden path="busniessId" class="form-control"
												placeholder="" />
												
											<form:hidden path="user.userId" class="form-control" />	

										</div>
										<div class="form-group">
											<label>Company Name</label>
											<form:input path="companyName" class="form-control"
												placeholder="Enter Company Name" id="companyName"
												maxlength="95" />
										</div>

										<div class="form-group">
											<label>Owner Name</label>
											<form:input path="nameOfOwner" class="form-control"
												maxlength="30" placeholder="Enter Owner Name"
												id="nameOfOwner" />
										</div>

										<div class="form-group">
											<label>Owner Contact</label>
											<form:input path="ownerContact" class="form-control"
												maxlength="9" placeholder="Enter Owner Contact"
												id="ownerContact" />
										</div>

										<div class="form-group">
											<label>Company Address</label>
											<form:textarea path="companyAddress" class="form-control"
												maxlength="245" id="companyAddress"
												placeholder="Enter Company Address" />
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