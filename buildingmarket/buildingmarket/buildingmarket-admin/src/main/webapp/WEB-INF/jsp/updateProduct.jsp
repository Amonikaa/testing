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
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script>
	$(function() {
		$("#startDate").datepicker();
	});

	$(function() {
		$("#endDate").datepicker();
	});
</script>
<script type="text/javascript">
	$().ready(function() {
		$("#promyform").validate({
			rules : {
				productSkuId: "required",
				productName : "required",
				productName : "required",
				description : "required",
				productPrice : {
					required : true,
					number : true,
					maxlength : 15

				},
				productQuantity : {
					required : true,
					number : true,
					maxlength : 17

				},

			},

			messages : {
				productSkuId: "Product sku id can not be blank",
				productName : "Product name can not be blank",
				
				description : "Description can not be blank",
				productPrice : {
					required : "Product price can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 15 Digit Allowed"

				},
				productQuantity : {
					required : "Product Quantity can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 17 Digit Allowed"

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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
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
									<form:form role="form" action="updateProduct" method="POST"
										modelAttribute="product" id="promyform">
										
										<div class="form-group">
											<label>Product Sku Id</label>
											<form:input path="productSkuId" class="form-control"
												placeholder="Enter Product Sku Id " id="productSkuId" />
										</div>
										
										<div class="form-group">
											<label>Product</label>
											<form:input path="productName" class="form-control"
												placeholder="Enter Product" id="productName" />
												<form:hidden path="productId" class="form-control"
												placeholder="Enter Product" id="productId" />
												
												<form:hidden path="user.userId" class="form-control"
												 />
										</div>
										
										<div class="form-group">
											<label>Product type</label>
											<form:input path="productType" class="form-control"
												placeholder="Enter product Type " id="productType" />
										</div>

										<div class="form-group">
											<label>Price</label>
											<form:input path="productPrice" class="form-control"
												placeholder="Enter Price " id="productPrice" />
										</div>

										<div class="form-group">
											<label>Quantity</label>
											<form:input path="productQuantity" class="form-control"
												placeholder="Enter Quantity" id="productQuantity" />
										</div>
										
										<div class="form-group">
											<label>Description</label>
											<form:textarea path="description" class="form-control"
												placeholder="Enter Description" id="description" />
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