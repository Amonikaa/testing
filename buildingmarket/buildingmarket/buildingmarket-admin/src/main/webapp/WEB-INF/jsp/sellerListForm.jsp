<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>DashBoard</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('#dataTables-example').DataTable();
	});
</script>
</head>
<body>
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">List of Seller</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<table id="dataTables-example"
						summary="2007 Major IT Companies' Profit">
						<thead>
							<tr>
								<th>Seller</th>
								<th>Mobile</th>
								<th>Product</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>

								<!-- <th scope="col" class="rounded">Edit</th>
								<th scope="col" class="rounded-q4">Delete</th> -->
							</tr>
						</thead>
						<tfoot>
						</tfoot>
						<tbody>
							<c:if test="${not empty sellerList}">
								<c:forEach var="sellerList" items="${sellerList}">
									<tr>
										<td>${sellerList.user.firstName}</td>
										<td>${sellerList.user.mobileNumber}</td>
										<td>${sellerList.productName}</td>
										<td>${sellerList.description}</td>
										<td>${sellerList.productPrice}$</td>
										<td>${sellerList.productQuantity}</td>


										<!-- 	<td><a href="#"><img
												src="resources/img/user_edit.png" alt="" title="" border="0" /></a></td>
										<td><a href="#" class="ask"><img
												src="resources/img/trash.png" alt="" title="" border="0" /></a></td> -->
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>

</body>

</html>