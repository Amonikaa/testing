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
<script type="text/javascript" src="resources/buildingmarket/js/jqueryValidation.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> -->
 <script type="text/javascript">
	$().ready(function() {
		$("#mysupportform").validate({
			rules : {

				name : "required",
				mobile : {
					required : true,
					number : true,
					maxlength : 9,
					minlength : 9
				},
				query : "required",

			},
			messages : {
				name : "Name can't be blank",
				mobile : {
					required : "Contact Number can't be blank"
				},
				query : "Massage can't be blank",

			}
		});
	});
</script>
<script type="text/javascript">
$(function() {
	  $('#conatctNumber').on('keydown', '#mobile', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
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
					<h1 class="page-header">Support</h1>
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
									<form:form role="form" action="saveContactSupport"
										method="POST" modelAttribute="contactSupport"
										id="mysupportform">
										<div class="form-group myform">
											<label class="mylabel">Name</label>
											<form:input path="name" class="form-control" maxlength="30"
												placeholder="Enter Name " id="name" />

										</div>


										<div class="form-group myform" id="conatctNumber">
											<label class="mylabel">Contact Number</label>
											<form:input path="mobile" class="form-control" maxlength="9"
												placeholder="Enter Contact Number" id="mobile" />
										</div>

										<div class="form-group myform">
											<label class="mylabel">Massage</label>
											<form:textarea path="query" class="form-control"
												maxlength="245" id="query" placeholder="Enter Query" />
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