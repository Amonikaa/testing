<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<div class="profile-info row">

				<div class="profile-image col-md-4 col-sm-4 col-xs-4">
					<img src="${base64Image}" class="avatar img-circle">
				</div>
				<div class="profile-details col-md-8 col-sm-8 col-xs-8">
					<h3>
						<a href="adminProfile?adminId=${adminSession.adminId}">${adminSession.name}</a>
						<!-- Available statuses: online, idle, busy, away and offline -->
						<span class="profile-status online"></span>
					</h3>
					<p class="profile-title">Super Admin</p>
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


				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Blogs<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="adminBlogs">Add Blogs</a></li>
						<li><a href="manageBlogs">Manage Blogs</a></li>
					</ul></li>

				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>User
						Detail<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="manageUserDetail">Manage User Detail</a></li>
					</ul></li>


				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Business
						Detail<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="manageBusiness">Manage Business Detail</a></li>
					</ul></li>


				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Product<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="addAdminProduct">Add Product</a></li>
						<li><a href="manageAdminProduct">Manage Product</a></li>
						<li><a href="addAdminProductType">Add Product Type</a></li>
						<li><a href="manageProduct">Manage Seller Product</a></li>
						<!-- <li><a href="manageBuyerProduct">Manage Buyer Product</a></li> -->
					</ul></li>


				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Order
						Detail<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="orderDetail">manage Order Detail</a></li>
						<li><a href="deliveryOrderDetail"> Delivery Order Detail</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Seller<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="sellerList">List Of Seller</a></li>
					</ul></li>


				<!-- <li><a href="#"><i class="fa fa-wrench fa-fw"></i>Buyer<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						 <li><a href="buyerList">List Of Buyer</a></li> 
					</ul></li> -->


				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Support<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="userSupportProduct">Manage Support</a></li>
					</ul></li>

				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Contact<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="userContact">Manage Contact</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-wrench fa-fw"></i>History<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="allPaymentHistory">Payment History</a></li>
					</ul></li>

			</ul>
			<!-- /.nav-second-level -->
		</div>
		<!-- /.sidebar-collapse -->
	</div>
</body>
</html>
