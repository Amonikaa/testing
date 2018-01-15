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
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />

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
					<h1 class="page-header">Product Type</h1>
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
								<div class="col-lg-6">
									<form:form role="form" action="adminProductType" method="POST"
										modelAttribute="adminProductType" id="myproductform">
										<div class="form-group">
											<label>Product</label>
											<form:select class="form-control" required="true"
												path="adminProduct.adminProductId" id="product"
												autocomplete="off" data-live-search="true">
												<option value="0">Select Product</option>
												<c:forEach items="${oldList}" var="oldList">
													<option value="${oldList.adminProductId}">${oldList.adminProductName}</option>
												</c:forEach>
											</form:select>

										</div>


										<div class="form-group">
											<label>Product Type</label>
											<form:input path="adminProductTypeName" class="form-control"
												required="true" placeholder="Enter Product Name"
												id="adminProductTypeName" maxlength="90" />

											<form:hidden path="adminProductTypeId" class="form-control" />


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