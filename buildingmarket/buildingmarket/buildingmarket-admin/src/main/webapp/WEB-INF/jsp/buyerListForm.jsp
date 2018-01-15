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
</head>
<body>
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">List of Buyer</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<table id="rounded-corner"
						summary="2007 Major IT Companies' Profit">
						<thead>
							<tr>
								<th scope="col" class="rounded">Buyer</th>
								<th scope="col" class="rounded">Mobile</th>
								<th scope="col" class="rounded">Product</th>
								<th scope="col" class="rounded">Description</th>
								<th scope="col" class="rounded">Price</th>
								<th scope="col" class="rounded">Quantity</th>
								
								<!-- <th scope="col" class="rounded">Edit</th>
								<th scope="col" class="rounded-q4">Delete</th> -->
							</tr>
						</thead>
						<tfoot>
						</tfoot>
						<tbody>
							<c:if test="${not empty buyerList}">
								<c:forEach var="buyerList" items="${buyerList}">
									<tr>
										<td>${buyerList.user.firstName}</td>
										<td>${buyerList.user.mobileNumber}</td>
										<td>${buyerList.productName}</td>
										<td>${buyerList.description}</td>
										<td>${buyerList.productPrice}$</td>
										<td>${buyerList.productQuantity}</td>
										
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