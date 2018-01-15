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
<script src="https://code.highcharts.com/stock/modules/exporting.js"></script>
<script type="text/javascript">
$(function () {
	$.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=aapl-ohlcv.json&callback=?', function (data) {

	    // split the data set into ohlc and volume
	    var volumeColor = '';
	    var ohlc = [],
	        volume = [],
	        dataLength = data.length,
	        // set the allowed units for data grouping
	        groupingUnits = [[
	            'week',                         // unit name
	            [1]                             // allowed multiples
	        ], [
	            'month',
	            [1, 2, 3, 4, 6]
	        ]],

	        i = 0;

	    for (i; i < dataLength; i += 1) {
	        ohlc.push([
	            data[i][0], // the date
	            data[i][1], // open
	            data[i][2], // high
	            data[i][3], // low
	            data[i][4] // close
	        ]);
	                     if (i==0) {
	        volumeColor = '#CCCCCC';
	         } else {         
	            if (data[i][1] >= data[i-1][1]) {
	               volumeColor = '#006633';
	            } else {
	               volumeColor = '#CC0033';
	            }
	         }

	        volume.push({
	            x: data[i][0], // the date
	            y: data[i][5],
	            color: volumeColor
	        });
	         console.log(volume);
	    }


	    // create the chart
	    $('#amit').highcharts('StockChart', {

	        rangeSelector: {
	            selected: 1
	        },

	        title: {
	            text: 'AAPL Historical'
	        },

	        yAxis: [{
	            labels: {
	                align: 'right',
	                x: -3
	            },
	            title: {
	                text: 'OHLC'
	            },
	            height: '60%',
	            lineWidth: 2
	        }, {
	            labels: {
	                align: 'right',
	                x: -3
	            },
	            title: {
	                text: 'Volume'
	            },
	            top: '65%',
	            height: '35%',
	            offset: 0,
	            lineWidth: 2
	        }],

	        series: [{
	            type: 'candlestick',
	            name: 'AAPL',
	            data: ohlc,
	            dataGrouping: {
	                units: groupingUnits
	            }
	        }, {
	            type: 'column',
	            name: 'Volume',
	            data: volume,
	            yAxis: 1,
	            turboThreshold: Number.MAX_VALUE,
	            dataGrouping: {
	                    enabled: false,
	                units: groupingUnits
	            }
	        }]
	    });
	});
	});

</script>
</head>
<body id="page-top" class="index">
	<!-- Services Section -->
	<section id="product">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-6">
					<h2 class="section-heading buyer">BUY/SELL PRODUCTS</h2>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-6">
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
					<!-- <div class="col-lg-12 product-img">
						<img src="resources/img/product-img-3.png">
					</div> -->
					<div id="amit" style="height:400px;min-width:310px"></div>
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
					<div class="col-lg-12">
						<h5 class="section-heading buyer">
							PLACE ORDER <span>*Required Field</span>
						</h5>
						<p class="buyertxt">Note: If you are seller placing this order
							you are confirming you own the stock and the sale is not a naked
							or short sale.</p>
					</div>
					<div class="col-lg-12 product-img">
						<img src="resources/img/placeorder.png">
					</div>
				</div>
				<div class="col-lg-4">

					<div class="col-lg-12 product-img">
						<img src="resources/img/market.png">
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<script type="text/javascript" src="resources/js/paging.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#tableData').paging({
				limit : 5
			});
		});
	</script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>