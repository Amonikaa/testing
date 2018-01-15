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
<title>Building Market</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="https://code.highcharts.com/stock/highstock.js"></script>
<script type="text/javascript">
	$(function() {
		
		$
				.getJSON(
						'https://www.highcharts.com/samples/data/jsonp.php?filename=aapl-c.json&callback=?',
						function(data) {
							
							$(".highchart").highcharts('StockChart', {

								rangeSelector : {
									selected : 2
								},

								title : {
									text : ''
								},

								series : [ {
									name : 'Steel',
									data : data,
									tooltip : {
										valueDecimals : 2
									}
								} ]
							});
							
						});
	
	});
	
$(function() {
		
		$
				.getJSON(
						'https://www.highcharts.com/samples/data/jsonp.php?filename=aapl-c.json&callback=?',
						function(data) {
							
							$(".highchart1").highcharts('StockChart', {

								rangeSelector : {
									selected : 2
								},

								title : {
									text : ''
								},

								series : [ {
									name : 'Concrete ',
									data : data,
									tooltip : {
										valueDecimals : 2
									}
								} ]
							});
							
						});
	
	});
</script>

</head>
<body id="page-top" class="index">
	<section id="product">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h2 class="section-heading buyer">WATCHLIST</h2>
				</div>
				<div class="col-lg-6">
					<c:choose>
						<c:when test="${not empty sessionScope.userSession.userEmail}">
							<h4>WELCOME BACK ${sessionScope.userSession.firstName}</h4>
						</c:when>
					</c:choose>
				</div>
			</div>
			<div class="row ">
				<hr>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="col-lg-9">
						<h5 class="section-heading buyer">LIVE PRODUCT PRICES - STEEL</h5>
					</div>
					<div class="col-lg-3">
						<ul class="productbtn">
							<li><a href="#">BUY</a></li>
							<li><a href="#">SELL</a></li>
						</ul>
					</div>
					<div class="col-lg-12 product-img">
						<img src="resources/img/product-img-1.png">
					</div>
					<div class="col-lg-8">
						<h6 class="section-heading buyer">MARKET OVERVIEW</h6>
					</div>
					<div class="col-lg-4">
						<ul class="productlink">
							<li>View</li>
							<li><a href="#" class="contact">Price</a></li>
							<li><a href="#">Order</a></li>
						</ul>
					</div>
					<div class="col-lg-12 product-img">
						<img src="resources/img/product-img-2.png">
					</div>
				</div>
				<div class="col-lg-4">
					<ul class="productaction">

						<li><a href="#"><img src="resources/img/down_arrow.png"
								title="droparrow" alt="droparrow"></a></li>
						<li><a href="#"><img src="resources/img/close_btn.png"
								title="close" alt="close"></a></li>
					</ul>

					<div class="col-lg-12 product-img">
						<br>
						<br>
						<br>
						<div class="highchart" style="min-width: 310px;"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="product" class="product_sec">
		<div class="container">

			<div class="row ">
				<hr>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="col-lg-9">

						<h5 class="section-heading buyer">LIVE PRODUCT PRICES -
							CONCRETE</h5>
					</div>
					<div class="col-lg-3">
						<ul class="productbtn">
							<li><a href="#">BUY</a></li>
							<li><a href="#">SELL</a></li>

						</ul>
					</div>

					<div class="col-lg-12 product-img">
						<img src="resources/img/product-img-1.png">
					</div>
					<div class="col-lg-8">

						<h6 class="section-heading buyer">MARKET OVERVIEW</h6>
					</div>
					<div class="col-lg-4">
						<ul class="productlink">
							<li>View</li>
							<li><a href="#" class="contact">Price</a></li>
							<li><a href="#">Order</a></li>


						</ul>
					</div>
					<div class="col-lg-12 product-img">
						<img src="resources/img/product-img-2.png">
					</div>
				</div>
				<div class="col-lg-4">
					<ul class="productaction">

						<li><a href="#"><img src="resources/img/down_arrow.png"
								title="droparrow" alt="droparrow"></a></li>
						<li><a href="#"><img src="resources/img/close_btn.png"
								title="close" alt="close"></a></li>
					</ul>
					<div class="col-lg-12 product-img">
					<br><br><br>
						<div class="highchart1" style="min-width: 310px; color: r"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
</body>
</html>