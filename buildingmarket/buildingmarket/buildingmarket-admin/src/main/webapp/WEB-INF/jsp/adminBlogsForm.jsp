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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/admin.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script>
	$(function() {
		$("#startDate").datepicker();
	});

	$(function() {
		$("#endDate").datepicker();
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
					<h1 class="page-header">blogs</h1>
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
									<form:form role="form" action="addBlogs" method="POST"
										modelAttribute="blogs" id="myform">
										<div class="form-group">
											<label>Title</label>
											<form:input path="blogsTitle" class="form-control"
												placeholder="Enter Title" id="blogsTitle" maxlength="90"/>
												
												<form:hidden path="blogsId" class="form-control"
												placeholder="Enter Title" />
												
										</div>
										<div class="form-group">
											<label>Start Date</label>
											<form:input path="startDate" class="form-control" readonly="true" 
												placeholder="Enter Start Date" id="startDate" maxlength="20" />
										</div>
										<div class="form-group">
											<label>End Date</label>
											<form:input path="endDate" class="form-control" readonly="true" 
												placeholder="Enter End Date" maxlength="20"/>
										</div>
										<div class="form-group">
											<label>Description</label>
											<form:textarea path="description" class="form-control"
												placeholder="Enter Description" id="description" maxlength="250" />
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