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
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript">
	$().ready(function() {
		$("#promyform").validate({
			rules : {
				buyerProductSkuId : "required",
				buyerProductName : "required",
				buyerProductPrice : {
					required : true,
					number : true,
					maxlength : 15

				},
				buyerProductQuantity : {
					required : true,
					number : true,
					maxlength : 17

				},
				buyerProductType : "required",
			},

			messages : {
				buyerProductSkuId : "Product sku id can not be blank",
				buyerProductName : "Product name can not be blank",
				buyerProductPrice : {
					required : "Product price can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 15 Digit Allowed"

				},
				buyerProductQuantity : {
					required : "Product Quantity can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 17 Digit Allowed"

				},
				buyerProductType : "Product Type can not be blank",
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
					<h1 class="page-header">Product</h1>
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
									<form:form role="form" action="updateBuyerProduct"
										method="POST" modelAttribute="buyerProduct" id="promyform">

										<div class="form-group">
											<label>Product Sku Id</label>
											<form:input path="buyerProductSkuId" class="form-control"
												placeholder="Enter Buyer Product Sku Id "
												id="buyerProductSkuId" />
										</div>
										<div class="form-group">
											<label>Product</label>
											<form:input path="buyerProductName" class="form-control"
												placeholder="Enter Product" id="buyerProductName" />
											<form:hidden path="buyerProductId" class="form-control"
												placeholder="Enter Product" id="buyerProductId" />

											<form:hidden path="user.userId" class="form-control" />
										</div>

										<div class="form-group">
											<label>Product Type</label>
											<form:input path="buyerProductType" class="form-control"
												placeholder="Enter Buyer Product Type "
												id="buyerProductType" />
										</div>

										<div class="form-group">
											<label>Price</label>
											<form:input path="buyerProductPrice" class="form-control"
												placeholder="Enter Price " id="buyerProductPrice" />
										</div>

										<div class="form-group">
											<label>Quantity</label>
											<form:input path="buyerProductQuantity" class="form-control"
												placeholder="Enter Quantity" id="buyerProductQuantity" />
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