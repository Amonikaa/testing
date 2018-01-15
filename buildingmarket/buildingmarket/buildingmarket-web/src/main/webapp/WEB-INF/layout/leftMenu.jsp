<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<div class="profile-info row">
				<div class="profile-image col-md-4 col-sm-4 col-xs-4">
					<c:choose>
						<c:when test="${not empty base64Image}">
							<img src="${base64Image}" class="avatar img-circle">
						</c:when>
						<c:otherwise>
							<img src="resources/dashboard/dist/images/profile.png"
								class="img-responsive img-circle">
						</c:otherwise>
					</c:choose>
					<%-- <a href="#"> <img
						src="http://localhost:8080/user_image/${userSession.userId}"
						class="img-responsive img-circle">
					</a> --%>
				</div>
				<div class="profile-details col-md-8 col-sm-8 col-xs-8">
					<h3>
						<a href="userProfile?userId=${userSession.userId}">${userSession.firstName}</a>
						<!-- Available statuses: online, idle, busy, away and offline -->
						<span class="profile-status online"></span>
					</h3>
					<p class="profile-title"></p>
				</div>
			</div>
			<ul class="nav" id="side-menu">
				<!-- <li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div> /input-group
				</li> -->
				<li><a href="home"><i class="fa fa-dashboard fa-fw"></i>
						Dashboard</a></li>

				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Business<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="businessForm">Add Business</a></li>
					 <li><a href="manageBusiness">Manage Business</a></li> 

					</ul></li>

				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>My Seller
						Profile<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="openProductForm">Add Product</a></li>
						<li><a href="sellerProductList">Own Product</a></li>
						<li><a href="manageProduct">List Of All Seller Product</a></li>

						<!-- <li><a href="adminProductForm">add Product</a></li> -->

					</ul></li>

				<!-- 	<li><a href="#"><i class="fa fa-wrench fa-fw"></i>My Buyer
						Profile<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="manageProduct">List Of Product</a></li>
						<li><a href="productByBuyer">Add Product By Buyer</a></li>
					</ul></li> -->

				<li><a href="#"><i class="fa fa-wrench fa-fw"></i> Detail<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="getUserOrder?userId=${userSession.userId}">Order
								Detail</a></li>
						<li><a href="getDeliveryDetail?userId=${userSession.userId}">Delivery
								Detail</a></li>
					</ul></li>
				<!-- <li><a href="paymentHistory"><i
						class="fa fa-dashboard fa-fw"></i> Payment History</a></li> -->

				<!-- <li><a href="userSupportForm"><i
						class="fa fa-dashboard fa-fw"></i> Contact Support</a></li> -->

				<li><a href="#"><i class="fa fa-wrench fa-fw"></i> Payment<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="paymentHistory">Payment History</a></li>
						<!-- <li><a href="adminProductForm">add Product</a></li> -->

					</ul></li>


				<li><a href="#"><i class="fa fa-wrench fa-fw"></i> Contact<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="userSupportForm"> Contact Support</a></li>
						<!-- <li><a href="adminProductForm">add Product</a></li> -->

					</ul></li>


			</ul>
			<!-- /.nav-second-level -->
		</div>
		<!-- /.sidebar-collapse -->
	</div>
</body>
</html>
