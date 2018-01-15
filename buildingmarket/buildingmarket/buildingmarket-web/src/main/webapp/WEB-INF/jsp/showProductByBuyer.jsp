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
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> -->
<!-- <script type="text/javascript">
	$().ready(function() {
		$("#producBuyer").validate({
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
					maxlength : 15

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
<script type="text/javascript">
$(function() {
	  $('#checkNumber').on('keydown', '#buyerProductPrice', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})

</script>
<script type="text/javascript">
$(function() {
	  $('#checkNumber').on('keydown', '#buyerProductQuantity', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})

</script> -->
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
							<div style="color: red">${successMessage}</div>
							<div class="row">
								<div class="col-lg-6">
									<form:form role="form" action="saveProductByBuyer"
										method="POST" modelAttribute="BuyerProduct" id="producBuyer">

										<div class="form-group">
											<label>Product Sku Id</label>
											<form:input path="buyerProductSkuId" class="form-control"
												placeholder="Enter Product Sku Id" id="buyerProductSkuId"
												maxlength="50" />
										</div>

										<div class="form-group">
											<label>Product</label>
											<form:input path="buyerProductName" class="form-control"
												placeholder="Enter Product" id="buyerProductName"
												maxlength="50" />
										</div>

										<div class="form-group">
											<label>Product Type</label>
											<form:input path="buyerProductType" class="form-control"
												placeholder="Enter Product Type" id="buyerProductType"
												maxlength="50" />
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