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
jQuery(document).ready(function() {
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
				busniessType : "Busniess type can't be blank",
				companyName : "Company name can't be blank",
				nameOfOwner : "Owner name can't be blank",
				ownerContact : {
					required : "Contact number can't be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 9 digit Allowed",
					minlength : "Minimum 9 digit Allowed"
				},
				companyAddress : "Company Address can't be blank",

			}
		});
	});
</script>
<script>
$(function() {
	  $('#checkNumber').on('keydown', '#ownerContact', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})
</script>
<style>
.error {
	color: red;
	font-style: italic;
	margin-top:-4%;
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
				<div class="col-lg-12">
					<h1 class="page-header">Business</h1>
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
							<div style="color: red; margin-left: 33%;">${successMessage}</div>
								<div class="col-lg-6" style="margin-left: 29%;">
									<form:form role="form" action="saveBusinessDetail"
										method="POST" modelAttribute="business" id="mybusinessform">
										<div class="form-group myform" >
											<label class="mylabel">Business Type</label>
											<form:input path="busniessType" class="form-control"
												maxlength="95" placeholder="Enter Business Type"
												id="busniessType" />

											<form:hidden path="busniessId" class="form-control"
												placeholder="" />

										</div>
										<div class="form-group myform">
											<label class="mylabel">Company Name</label>
											<form:input path="companyName" class="form-control"
												placeholder="Enter Company Name" id="companyName"
												maxlength="95" />
										</div>

										<div class="form-group myform">
											<label class="mylabel">Owner Name</label>
											<form:input path="nameOfOwner" class="form-control"
												maxlength="30" placeholder="Enter Owner Name"
												id="nameOfOwner" />
										</div>

										<div class="form-group myform" id="checkNumber">
											<label class="mylabel">Owner Contact</label>
											<form:input path="ownerContact" class="form-control"
												maxlength="9" placeholder="Enter Owner Contact Number"
												id="ownerContact" />
										</div>

										<div class="form-group myform">
											<label class="mylabel">Company Address</label>
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