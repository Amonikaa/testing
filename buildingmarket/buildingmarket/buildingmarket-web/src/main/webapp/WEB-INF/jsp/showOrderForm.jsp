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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="resources/css/all.css"> 

<script>
	$(function() {
		$("#delivery").datepicker({

		});
	});
</script>

<!-- 
<script type="text/javascript">
	$().ready(function() {
		$("#orderForm").validate({
			rules : {
				delivery : "required",
				address : "required",
				quantity : {
					required : true,
					number : true,
					maxlength : 17

				},

			},

			messages : {
				delivery : "Delivery Date can not be blank",
				address : "Delivery Address can not be blank",
				quantity : {
					required : "Product Quantity can not be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 17 Digit Allowed"

				},
			}
		});
	});
</script> -->
<style>
.error {
	color: red;
	font-style: italic;
}
</style>
<script type="text/javascript">
$(function() {
	  $('#qty').on('keydown', '#quantity', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
	})
</script>
</head>
<body>
	<div id="wrapper">
		<div id="main">
		<div style="color: red;">${successMessage}</div>
			<div class="container" style="margin-left: 20%; width: 79%;">
				<div class="order-wrap">
					<div class="order-left-wrap">
						<h3>
							place order <span>*Required Field</span>
						</h3>
						<span class="order-note">Note:if you are a seller placing
							this order you are confirming you own the stock and the sale is
							not a naked or short sale.</span>
						<form:form method="POST" action="payment"
							modelAttribute="OrderForm" class="order-form" id="orderForm">
							<input type="hidden" name="_token"
								value="62Hukxzj7zwYvKQSFO0PbNOnjPyOmNSy8PMqmGAN">
							<fieldset>
								<div class="form-holder">
									<div class="order-row">
										<span class="account"></span> <span class="person"> </span>
									</div>
									<div class="order-row">
										<label for="type"><span>&nbsp&nbsp</span></label>
										<div class="order-col">
											<div class="order-inner-row">
												<input type="radio" id="buy" name="buyerType" value="1"
													checked="checked"> <label for="buy"><span></span>BUYER
													PLACE ORDER</label>
											</div>

										</div>
									</div>

									<div class="order-row quantity">
										<label for="price"><span>*</span>Product<span
											class="item-unit"></span></label>
										<div class="order-col">
											<form:input path="product" id="product" autocomplete="off"
												value="${product}" class="product" readonly="true" />
											<!-- <span class="value">or</span> -->
										</div>


									</div>
									<div class="order-row">
										<label for="type"><span>*</span>Product Type</label>
										<div class="order-col">
											<div class="order-inner-row">
												<form:input path="type" id="type" autocomplete="off"
													value="${type}" class="type" readonly="true" />
												<label for="buy"><span></span></label>
											</div>

										</div>
									</div>

									<div class="order-row quantity" id="qty">
										<label for="quantity"><span>*</span>Quantity<span
											class="item-unit"></span></label>
										<div class="order-col">
											<form:input path="quantity" name="quantity" id="quantity"
												autocomplete="off" value="" class="quantity "
												onblur="calculation();" required="required"/>

										</div>
										<span id="qtty" style="color: red;"></span>
									</div>
									<div class="order-row price">
										<label for="limit"><span>*</span>Price Per Quantity </label>
										<div class="order-col">
											<form:input path="price" id="price" autocomplete="off"
												value="${price}" class="price " readonly="true" />
											<span class="or"></span>
											<div class="additional">
												<input type="hidden" id="at"> <label for="at">
													&nbsp&nbsp</label>
											</div>
										</div>
									</div>

									<div class="order-row delivery">
										<label for="address"><span>*</span>Delivery Address1</label>
										<div class="order-col delivery">
											<div class="order-inner-row">
												<form:textarea path="deliveryAddress" id="address" required="required" value=""
													autocomplete="off" class="" />
											</div>

										</div>
									</div>
										<div class="order-row delivery">
										<label for="address"><span>*</span>Delivery Address2</label>
										<div class="order-col delivery">
											<div class="order-inner-row">
												<form:textarea path="deliveryAddress2" id="address2" value=""
													autocomplete="off" class="" />
											</div>

										</div>
									</div>
										<div class="order-row delivery">
										<label for="address"><span>*</span>Delivery Address3</label>
										<div class="order-col delivery">
											<div class="order-inner-row">
												<form:textarea path="deliveryAddress3" id="address3" value=""
													autocomplete="off" class="" />
											</div>

										</div>
									</div>
									<div class="order-row date">
										<label for="delivery"><span>*</span>Delivery Date</label>
										<div class="order-col">
											<form:input path="deliveryDate" id="delivery" required="required" value=""
												autocomplete="off" class="" />
											<!-- <span class="calendar" id="cal1">icon</span> -->
										</div>
									</div>
									<div class="order-estimate-wrap">
										<span class="title">Order Estimate</span>
										<div class="order-estimate-inner">
											<ul class="order-estimate-list">
												<li><span class="first">Order Value($)</span> <span
													class="second" id="orderValue">0.00</span></li>
												<li class="inc"><span class="first">Brokerage &
														Cost($)</span> <span class="broker second" id="brokerSecond">0.00</span></li>
												<li class="sub-total"><span class="first">Sub-Total($)</span>
													<span class="second" id="subTotal">0.00</span></li>

												<li class="gst"><span class="first">GST($)</span> <span
													class="second" id="gst">0.00</span></li>

												<li class="total"><span class="first">Total($)</span> <span
													class="second" id="totalAmount">0.00</span> <!--<span class="inc">(incl GST)</span>-->
												</li>
											</ul>
										</div>
										<form:hidden path="amount" id="actualAmount"/>
										<form:hidden path="sellerId" value="${userId}"/>
										<form:hidden path="ProductId" value="${ProductId}"/>
										<form:hidden path="productQuantity" value="${productQuantity}" id="pqty"/>
										
										<div class="clear-wrap">
											<span class="clear">clear <span></span></span>
										</div>
									</div>
								</div>
								<button type="submit">Proceed</button>
							</fieldset>
						</form:form>
					</div>


				</div>
			</div>
		</div>
		<script>
			function calculation() {
					var quantity = $('#quantity').val();
					var pqty = $('#pqty').val();
					var qua = parseInt(quantity) ;
					var pqutty =parseInt(pqty) ;
					if(pqutty>=qua){
						var quantity = $('#quantity').val();
						var price = $('#price').val();
						var total = (quantity * price);
						var order = document.getElementById("orderValue").innerHTML = total;
						var broker = document.getElementById("brokerSecond").innerHTML = total * 2.5 / 100;
						var subTotal = document.getElementById("subTotal").innerHTML = order
								+ broker;
						var gst = document.getElementById("gst").innerHTML = subTotal * 10 / 100;
						var amt = document.getElementById("totalAmount").innerHTML = subTotal
								+ gst;
						var rount = (Math.round(amt * 100) / 100).toFixed(2);
						var actualAmt = rount*100;
						var amtAct =parseInt(actualAmt) ;
						 $( "#actualAmount" ).val(amtAct);
						 return true;
						}else{
							document.getElementById("quantity").value=" ";
							alert("Please enter less quantity from product quantity");
							return false;
							//document.getElementById("qtty").innerHTML="Please enter less quantity from product quantity";
						}
					}
					
				
		</script>
</body>
</html>