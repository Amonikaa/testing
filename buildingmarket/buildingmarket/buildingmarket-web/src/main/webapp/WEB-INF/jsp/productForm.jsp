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
</script>
</head>
<body id="page-top" class="index">
	<section id="product">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h2 class="section-heading buyer">PRODUCTS</h2>
				</div>
				<div class="col-lg-6">
					<c:choose>
						<c:when test="${not empty sessionScope.userSession.userEmail}">
					<h4>WELCOME BACK  ${sessionScope.userSession.firstName}</h4>
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
					<div class="col-lg-8">

						<h5 class="section-heading buyer">LIVE PRODUCT PRICES - STEEL</h5>
					</div>
					<div class="col-lg-4">
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

					<div class="col-lg-12 product-img">
					<br><br><br>
						<div class="highchart" style="min-width: 310px;"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="industry">
		<div class="container">
			<h3>INDUSTRY NEWS - STEEL</h3>
		</div>
	</section>
	<section class="industrysection">
		<div class="container">
			<table id="tableData" class="table table-bordered table-striped">

				<tbody>
					<tr>
						<td><h3>SA INDUSTRY AND GOVERNMENT TO MEET FOR STEEL'S
								SAKE - 4 FEB 2016</h3>
							<p class="industrytxt">
								The ASI is urging all South Australian members to attend the
								special Steel Summit being organised by the office of the
								State's Treasurer, Tom Koutsantonis at Adelaide Convention
								Centre on...<a href="#">Read more</a>
							</p></td>

					</tr>
					<tr>
						<td><h3>GREEN LIGHT FOR ARARAT WIND FARM SUPPORTS LOCAL
								JOBS AND SKILLS - 10 DEC 2015</h3>

							<p class="industrytxt">
								The ASI has welcomed the Clean Energy Finance Corporation's
								(CEFC) announcement yesterday on securing funding to develop
								Australia's third largest wind farm as a boon for local
								industry... <a href="#">Read more</a>
							</p></td>

					</tr>
					<tr>
						<td><h3>SOUTH AUSTRALIA STAKES FAITH IN LOCAL STEEL - 25
								NOV 2015</h3>

							<p class="industrytxt">
								The ASI has welcomed the South Australian Government's
								announcement for all steelwork procured for public works to be
								independently tested and certified to Australian standards,
								also... <a href="#">Read more</a>
							</p></td>

					</tr>
					<tr>
						<td><h3>NATIONAL STRATEGY NEEDED TO STEM MASS STEEL JOB
								LOSSES - 17 NOV 2015</h3>

							<p class="industrytxt">
								The announcement on 16 November of 250+ job losses of steel mill
								staff and contractors at Whyalla on top of 500+ to go from the
								Port Kembla NSW steelworks make it clear that this is a national
								issue..<a href="#">Read more</a>
							</p></td>

					</tr>
					<tr>
						<td><h3>STRONGER LOCAL CONTENT POLICIES URGED ACROSS
								STEEL SUPPLY CHAIN - 26 Oct 2015</h3>

							<p class="industrytxt">
								The ASI has welcomed the announcement about the Port Kembla mill
								continuing as a clear signal of faith in the future of the steel
								industry, but that stronger government local content policies
								are... <a href="#">Read more</a>
							</p></td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	<div class="clearfix"></div>
</body>
</html>