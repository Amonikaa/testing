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
	$().ready(function() {
		$("#promyform").validate({
			rules : {
				productSkuId : "required",
				productName : "required",
				productType : "required",
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
				productSkuId : "Product sku id can not be blank",
				productName : "Product name can not be blank",
				productType : "Product type can not be blank",
				description : "Description can not be blank",
				productPrice : {
					required : "Product price can not be blank",
					maxlength : "Maximum 15 Digit Allowed"

				},
				productQuantity : {
					required : "Product Quantity can not be blank",
					maxlength : "Maximum 17 Digit Allowed"

				},
			}
		});
	});
</script>
<script type="text/javascript">
$(function() {
	  $('#price').on('keydown', '#productPrice', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})

</script>
<script type="text/javascript">
$(function() {
	  $('#quantity').on('keydown', '#productQuantity', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})

</script>
<style>
.error {
	color: red;
	font-style: italic;
	margin-top:-2%;
}
 .myform{
     margin-top: 5%;
     
 }
 .mylabel{
    margin-left: -25%;
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
							<div style="color: red; margin-left: 33%;">${successMessage}</div>
								<div class="col-lg-6" style="margin-left: 29%;">
									<form:form role="form" action="adminProduct" method="POST"
										modelAttribute="product" id="promyform">
										<div class="form-group myform">
											<label class="mylabel">Product Sku Id</label>
											<form:input path="productSkuId" class="form-control"
												placeholder="Enter Product Sku Id" id="productSkuId"
												maxlength="50" />
												<form:hidden path="productId" />
										</div>
<%-- 
										<div class="form-group">
											<label>Product</label>
											<form:input path="productName" class="form-control"
												placeholder="Enter Product" id="productName" maxlength="50" />
										</div> --%>
										<div class="form-group myform">
											<label class="mylabel">Product</label>
										<form:select class="form-control" path="productName" id="product"
											autocomplete="off" data-live-search="true">
											<option value="">Select Product</option>
											<optgroup label="CONCRETE">
												<option value="20 mpa" data-tokens="concrete, 20 mpa">20
													mpa</option>

												<option value="25 mpa" data-tokens="concrete, 25 mpa">25
													mpa</option>

												<option value="32
													mpa" data-tokens="concrete, 32 mpa">32
													mpa</option>

											</optgroup>
											<optgroup label="BRICKWORK">
												<option value="Standard
													Common" data-tokens="brickwork, Standard Common">Standard
													Common</option>

												<option value="Modular
													Common" data-tokens="brickwork, Modular Common">Modular
													Common</option>

												<option value="Facing
													Standard" data-tokens="brickwork, Facing Standard">Facing
													Standard</option>

												<option value="Facing
													Modular" data-tokens="brickwork, Facing Modular">Facing
													Modular</option>

											</optgroup>
											<optgroup label="STRUCTURAL STEELWORK">
												<option value="Universal
													beams &amp; columns"
													data-tokens="structural steelwork, Universal beams &amp; columns">Universal
													beams &amp; columns</option>

												<option value="Taper
													Flange beams and channels"
													data-tokens="structural steelwork, Taper Flange beams and channels">Taper
													Flange beams and channels</option>

												<option value="Hollow
													sections"
													data-tokens="structural steelwork, Hollow sections">Hollow
													sections</option>

											</optgroup>
											<optgroup label="CARPENTRY">
												<option value="100
													x 25" data-tokens="carpentry, 100 x 25">100
													x 25</option>

												<option value=">100
													x 38" data-tokens="carpentry, 100 x 38">100
													x 38</option>

												<option value="100
													x 50" data-tokens="carpentry, 100 x 50">100
													x 50</option>

												<option value="150
													x 50" data-tokens="carpentry, 150 x 50">150
													x 50</option>

												<option value="200
													x 50" data-tokens="carpentry, 200 x 50">200
													x 50</option>

											</optgroup>
											<optgroup label="ROOFING">
												<option value="" data-tokens="roofing, Corrugated Zincalume"
													disabled>Corrugated Zincalume</option>
												<option data-tokens="roofing, Corrugated Zincalume, 0.42 mm"
													value="0.42 mm">0.42 mm</option>
												<option data-tokens="roofing, Corrugated Zincalume, 0.60 mm"
													value="0.60 mm">0.60 mm</option>

												<option value="" data-tokens="roofing, Ribbed Zincalume"
													disabled>Ribbed Zincalume</option>
												<option
													data-tokens="roofing, Ribbed Zincalume, 0.42mm (spandek)"
													value="0.42mm (spandek)">0.42mm (spandek)</option>
												<option
													data-tokens="roofing, Ribbed Zincalume, 0.48mm (spandek)"
													value="0.48mm (spandek)">0.48mm (spandek)</option>
												<option
													data-tokens="roofing, Ribbed Zincalume, 0.48 (Kliplock)"
													value="0.48 (Kliplock)">0.48 (Kliplock)</option>
												<option
													data-tokens="roofing, Ribbed Zincalume, 0.60 (Kliplock)"
													value="0.60 (Kliplock)">0.60 (Kliplock)</option>
											</optgroup>
											<optgroup label="GLAZING">
												<option value="" data-tokens="glazing, Clear Float Glass"
													disabled>Clear Float Glass</option>
												<option data-tokens="glazing, Clear Float Glass, 3 mm"
													value="3 mm">3 mm</option>
												<option data-tokens="glazing, Clear Float Glass, 4 mm"
													value="4 mm">4 mm</option>
												<option data-tokens="glazing, Clear Float Glass, 5 mm"
													value="5 mm">5 mm</option>
												<option data-tokens="glazing, Clear Float Glass, 6 mm"
													value="6 mm">6 mm</option>
												<option data-tokens="glazing, Clear Float Glass, 8 mm"
													value="8 mm">8 mm</option>
												<option data-tokens="glazing, Clear Float Glass, 10 mm"
													value="10 mm">10 mm</option>
											</optgroup>
											<optgroup label="REINFORCEMENT">
												<option value="" data-tokens="reinforcement, Fabric"
													disabled>Fabric</option>
												<option data-tokens="reinforcement, Fabric, SL92" value="SL92">SL92</option>
												<option data-tokens="reinforcement, Fabric, SL82" value="SL82">SL82</option>
												<option data-tokens="reinforcement, Fabric, SL72" value="SL72">SL72</option>
												<option data-tokens="reinforcement, Fabric, SL62" value="SL62">SL62</option>
											</optgroup>
											<optgroup label="BAR">
												<option value="Structural
													grade round bar reinforcement"
													data-tokens="bar, Structural grade round bar reinforcement">Structural
													grade round bar reinforcement</option>

												<option value="Ditto
													in ligatures" data-tokens="bar, Ditto in ligatures">Ditto
													in ligatures</option>

												<option value="2750.00" data-tokens="bar, 2750.00">2750.00</option>

											</optgroup>
										</form:select>
										</div>

										<div class="form-group myform">
											<label class="mylabel">Product Type</label>
											<form:input path="productType" class="form-control"
												placeholder="Enter Product" id="productType" maxlength="50" />
										</div>

										<div class="form-group myform" id="price">
											<label class="mylabel">Price</label>
											<form:input path="productPrice" class="form-control"
												placeholder="Enter Price " id="productPrice" maxlength="25" />
										</div>

										<div class="form-group myform" id="quantity">
											<label class="mylabel">Quantity</label>
											<form:input path="productQuantity" class="form-control"
												placeholder="Enter Quantity" id="productQuantity"
												maxlength="17" />
										</div>

										<div class="form-group myform">
											<label class="mylabel">Description</label>
											<form:textarea path="description" class="form-control"
												placeholder="Enter Description" id="description"
												maxlength="250" />
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