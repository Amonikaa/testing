<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Building Market</title>
<!-- Bootstrap Core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom Fonts -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">

<!-- Theme CSS -->
<link href="resources/css/agency.min.css" rel="stylesheet">
<link href="resources/css/Building.css" rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="index"><img
					src="resources/img/bm-logo.png" title="BM-logo" alt="BM-logo"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<c:choose>
						<c:when test="${not empty sessionScope.userSession.userEmail}">
					<!-- <li><a href="home">Home</a></li> -->
					</c:when>
					</c:choose>
					<li><a href="index">Home</a></li>
					<li><a href="buyersForm">BUYERS</a></li>
					<li><a href="sellersForm">SELLERS</a></li>
					<li><a href="blogs">BLOGS</a></li>
					<!-- <li><a href="#">VIEW ACCOUNT</a></li> -->
					<c:choose>
						<c:when test="${not empty sessionScope.userSession.userEmail}">
							<li><a href="product">PRODUCT</a></li>
							<li><a href="buySellProduct">BUY/SELL</a></li>
							<li><a href="watchList" class="contact">WATCHLIST</a></li>
							<li><a href="logoutUser">LogOut</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="contactForm" class="contact">CONTACT</a></li>
							<li><a href="userLogin">SIGN IN</a></li>
							<li><a href="userRegistrationForm">JOIN</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- jQuery -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="resources/js/jqBootstrapValidation.js"></script>
	<script src="resources/js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="resources/js/agency.min.js"></script>

</body>
</html>