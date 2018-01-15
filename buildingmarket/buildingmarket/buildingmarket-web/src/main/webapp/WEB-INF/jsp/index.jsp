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
</head>
<body id="page-top" class="index">
	<!-- Header -->
	<header>
		<div class="container">
			<div class="intro-text">
				<div class="col-sm-6 col-md-6 col-lg-6 leftlogo">
					<img src="resources/img/bm-logo-banner.png">
				</div>

				<div class="col-sm-6 col-md-6 col-lg-6">
					<div class="intro-lead-in">BUY AND SELL BUILDING PRODUCTS IN
						MINUTES</div>

				</div>
			</div>
		</div>
	</header>
	<section class="price">
		<div class="price_container">
			<ul class="price_sub">
				<li>LIVE PRODUCT PRICES</li>
			</ul>
			<MARQUEE class="marq">
				<ul class="price_detail">
					<c:forEach items="${productList}" var="productList">

						<li>${productList.productName}&nbsp;$
							${productList.productPrice} &nbsp; |</li>


					</c:forEach>
				</ul>
			</MARQUEE>

		</div>
	</section>
	<!-- Services Section -->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading trade">THE NEW WAY TO TRADE
						BUILDING PRODUCTS</h2>
				</div>
			</div>
			<div class="row ">
				<div class="col-sm-4 col-md-4">
					<div class="tradebox">
						<span> <img src="resources/img/img-1.jpg">
						</span>
						<h4 class="service-heading">Easy to Buy, Easy to Sell</h4>
						<p class="text-muted">Building Market has been designed from
							the ground up to make buying or selling your commodities as
							simple as possible.</p>
					</div>
				</div>
				<div class="col-sm-4 col-md-4">
					<div class="tradebox">
						<span> <img src="resources/img/img-2.jpg">
						</span>
						<h4 class="service-heading">More Competitive Prices</h4>
						<p class="text-muted">Building Market provides a highly
							competitive market place for buyers and sellers of building
							products.</p>
					</div>
				</div>
				<div class="col-sm-4 col-md-4">
					<div class="tradebox">
						<span> <img src="resources/img/img-3.jpg">
						</span>
						<h4 class="service-heading">Low Transaction Fees</h4>
						<p class="text-muted">Each transaction incurs a fee of 2% of
							the contract value amount.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="buy">
		<div class=" col-lg-4 buybox_1">
			BUYING AND SELLING YOUR MATERIALS COULDN'T BE EASIER WITH OUR SIMPLE
			<span>THREE STEP SOLUTION</span>
		</div>

		<div class="col-lg-8 buybox_2">

			<div class="col-lg-6">
				<h3>BUYERS</h3>
				<ol>
					<li>Buy products at live prices, or make a bid</li>
					<li>Easy payment system for settlement</li>
					<li>Products are delivered when you need them</li>

				</ol>
				<a href="userLogin">START BUYING</a>
			</div>
			<div class="col-lg-6">
				<h3>SELLERS</h3>
				<ol>
					<li>Enter the products you want to sell including details and
						your best price</li>
					<li>Buyers will confirm purchase order, you receive payment</li>
					<li>Products are delivered</li>

				</ol>
				<a href="userLogin">START BUYING</a>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>
	<section class="product_detail">
		<div class="col-sm-8 col-md-8 col-lg-8">
			<h5>Ovitia cores ea quidese quaerumque et odicide volupti
				occuptam aut ex eosa quuntes ad maiossi tatius dolum velis et que
				poribus ditatur modis ma quatis.</h5>
			<p class="text-muted">Incto qui omnihil lignat quisin poreror
				itatecatio et accaepu damus, officimi, veliquo dis nitio etas aut
				exceptam quid quissed ellaborero.</p>
			<p class="text-muted">Quam adita delique consero bea velluptatis
				eossequis aspereh endame cuptate exerore ssinum alicae pos ea qui
				odigeni hictam consediossi dem es molectiis eium eat.</p>
			<p class="text-muted">Incto qui omnihil lignat quisin poreror
				itatecatio et accaepu damus, officimi, veliquo dis nitit autol
				exceptam quid quissed ellaborero. Quam adita delique consero bea
				velluptatis eossequis aspereh endame cuptate.</p>
		</div>
		<div class="col-sm-4 col-md-4 col-lg-4">
			<img src="resources/img/product_img.jpg">
		</div>
	</section>
	<!-- Clients Aside -->
	<div class="clearfix"></div>


	<!-- Portfolio Modals -->
	<!-- Use the modals below to showcase details about your portfolio projects! -->

	<!-- Portfolio Modal 1 -->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2>Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-responsive img-centered"
									src="img/portfolio/roundicons-free.png" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<p>
									<strong>Want these icons in this portfolio item
										sample?</strong>You can download 60 of them for free, courtesy of <a
										href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">RoundIcons.com</a>,
									or you can purchase the 1500 icon set <a
										href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">here</a>.
								</p>
								<ul class="list-inline">
									<li>Date: July 2014</li>
									<li>Client: Round Icons</li>
									<li>Category: Graphic Design</li>
								</ul>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 2 -->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
							<div class="modal-body">
								<h2>Project Heading</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-responsive img-centered"
									src="img/portfolio/startup-framework-preview.png" alt="">
								<p>
									<a href="http://designmodo.com/startup/?u=787">Startup
										Framework</a> is a website builder for professionals. Startup
									Framework contains components and complex blocks (PSD+HTML
									Bootstrap themes and templates) which can easily be integrated
									into almost any design. All of these components are made in the
									same style, and can easily be integrated into projects,
									allowing you to create hundreds of solutions for your future
									projects.
								</p>
								<p>
									You can preview Startup Framework <a
										href="http://designmodo.com/startup/?u=787">here</a>.
								</p>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 3 -->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2>Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-responsive img-centered"
									src="img/portfolio/treehouse-preview.png" alt="">
								<p>
									Treehouse is a free PSD web template built by <a
										href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
									This is bright and spacious design perfect for people or
									startup companies looking to showcase their apps or other
									projects.
								</p>
								<p>
									You can download the PSD template in this portfolio sample item
									at <a
										href="http://freebiesxpress.com/gallery/treehouse-free-psd-web-template/">FreebiesXpress.com</a>.
								</p>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 4 -->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2>Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-responsive img-centered"
									src="img/portfolio/golden-preview.png" alt="">
								<p>
									Start Bootstrap's Agency theme is based on Golden, a free PSD
									website template built by <a
										href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
									Golden is a modern and clean one page web template that was
									made exclusively for Best PSD Freebies. This template has a
									great portfolio, timeline, and meet your team sections that can
									be easily modified to fit your needs.
								</p>
								<p>
									You can download the PSD template in this portfolio sample item
									at <a
										href="http://freebiesxpress.com/gallery/golden-free-one-page-web-template/">FreebiesXpress.com</a>.
								</p>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 5 -->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2>Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-responsive img-centered"
									src="img/portfolio/escape-preview.png" alt="">
								<p>
									Escape is a free PSD web template built by <a
										href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
									Escape is a one page web template that was designed with
									agencies in mind. This template is ideal for those looking for
									a simple one page solution to describe your business and offer
									your services.
								</p>
								<p>
									You can download the PSD template in this portfolio sample item
									at <a
										href="http://freebiesxpress.com/gallery/escape-one-page-psd-web-template/">FreebiesXpress.com</a>.
								</p>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 6 -->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2>Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-responsive img-centered"
									src="img/portfolio/dreams-preview.png" alt="">
								<p>
									Dreams is a free PSD web template built by <a
										href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
									Dreams is a modern one page web template designed for almost
									any purpose. It’s a beautiful template that’s designed with
									the Bootstrap framework in mind.
								</p>
								<p>
									You can download the PSD template in this portfolio sample item
									at <a
										href="http://freebiesxpress.com/gallery/dreams-free-one-page-web-template/">FreebiesXpress.com</a>.
								</p>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>