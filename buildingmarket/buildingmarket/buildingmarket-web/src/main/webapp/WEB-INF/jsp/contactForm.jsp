<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<title>BuildingMarket</title>
<!-- Theme CSS -->
<!-- <link href="resources/css/form.css" rel="stylesheet"> -->
<style type="text/css">
.error {
	color: red;
	font-style: italic;
}

.error-msg {
	color: #ff0000;
	font-style: italic;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<!-- <script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script> -->
</head>
<body>
	<c:choose>
		<c:when test="${not empty successMessage}">
			<div class="form-group">
				<div class="alert alert-success" id="forMsgDisplay"
					style="display: block; margin-bottom: 0px;">
					<span style="padding-left: 486px;"> ${successMessage}</span>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		</c:when>
	</c:choose>
	<!-- Header -->
	<section class="contactpage">
		<div class="container"></div>
	</section>
	<!-- help -->
	<section class="hlp">
		<div class="hlpcontent">
			<div class="container helpsection">
				<h2>HOW CAN WE HELP YOU?</h2>
				<div class="row">
					<div class="col-sm-4 col-md-4 col-lg-4">
						<h4>Managing Your Order</h4>
						<p class="text-muted">Laboraturit rerit ped quid ut aliquos
							volor susanit ecatest, as quatia dolorepudi doluptati dolorenda
							quostis pla elestiusapid milistr umquae arciae pratureius, cum ne
							vero inciatem</p>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4">
						<h4>Managing Your Account</h4>
						<p class="text-muted">Laboraturit rerit ped quid ut aliquos
							volor susanit ecatest, as quatia dolorepudi doluptati dolorenda
							quostis pla elestiusapid milistr umquae arciae pratureius, cum ne
							vero inciatem</p>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4">
						<h4>Payments</h4>
						<p class="text-muted">Laboraturit rerit ped quid ut aliquos
							volor susanit ecatest, as quatia dolorepudi doluptati dolorenda
							quostis pla elestiusapid milistr umquae arciae pratureius, cum ne
							vero inciatem</p>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- help -->
	<section class="contactbox">
		<div class=" col-lg-6 contactbox_1">
			HAVE ANY MORE QUESTIONS? CONTACT US
			<p class="contactbox_txtnml">The easiest way to reach us is to
				send us a quick message through the contact form. Or, if you prefer
				phone, call our Sydney office or Customer Service Hotline.</p>
			<div class="logo_black">
				<img src="resources/img/bm-logo-black.png">
			</div>

			<h5>SYDNEY HEAD OFFICE</h5>

			<p class="adres">
				Level 5, 275 Alfred St<br> North Sydney NSW 2060<br> P.
				XXXX XXXX
			</p>
			<h5>CUSTOMER SERVICE</h5>
			<p class="adres">P. XXXX XXXX</p>
		</div>
        
		<div class="col-lg-6 contactbox_2">
			<div id="contactform" class="col-lg-12">
			 <div style="color: red;">${successMessage}</div>
				<form:form class="form-horizontal" id="contactform"
					action="saveContactDetail" method="POST" modelAttribute="contact">
					<div class="form-group">
						<div class="row">
							<div class="col-xs-6  col-sm-6 col-md-6 col-lg-6">

								<form:input class="form-control" id="name"
									placeholder="Enter name" path="name" maxlength="25" />
								<form:errors path="name" cssClass="error-msg" />
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<form:input path="email" class="form-control" id="email"
									placeholder="Enter email" maxlength="35" />
								<form:errors path="email" cssClass="error-msg" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<form:textarea id="query" maxlength="255" class="form-control"
							placeholder="Enter query" path="query" rows="3" cols="51" />
						<form:errors path="query" cssClass="error-msg" />

					</div>

					<button type="submit" class="btn btn-default">Submit</button>
				</form:form>
			</div>


		</div>
	</section>
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
									src="resources/img/portfolio/treehouse-preview.png" alt="">
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
									src="resources/img/portfolio/golden-preview.png" alt="">
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
									src="resources/img/portfolio/dreams-preview.png" alt="">
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