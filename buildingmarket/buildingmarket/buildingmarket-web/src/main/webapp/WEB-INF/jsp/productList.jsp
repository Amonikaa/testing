<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable();
		});
	</script>
</head>

<body>
	<div id="wrapper">
		<!-- Navigation -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Product List</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
				<div style="color: red;">${successMessage}</div>
					<div class="panel panel-default">
						<div class="panel-heading"></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>Sku Id</th>
											<th>Product</th>
											<th>Product Type</th>
											<th>Price</th>
											<th>Quantity</th>
											
											<th>Description</th>
											<th>Buy</th>

										</tr>
									</thead>
									<tbody>
										<c:if test="${empty oldList }">
											<tr class="odd gradeX">
												<td colspan="8">No Product found</td>
											</tr>
										</c:if>
										<c:if test="${not empty oldList}">
											<c:forEach var="oldList" items="${oldList}">
												<tr class="odd gradeX">
													<td>${oldList.productSkuId}</td>
													<td>${oldList.productName}</td>
													<td>${oldList.productType}</td>
													<td>${oldList.productPrice}</td>
													<td>${oldList.productQuantity}</td>
													<td>${oldList.description}</td>

													<%-- <td><a
														href="showOrderForm?price=${oldList.productPrice}&product=${oldList.productName}&type=${oldList.productType}&userId=${oldList.user.userId}&ProductId=${oldList.productId}"
														class="ask"><img src="resources/img/buy.png" alt="" height="30px;" width="30px;"
															title="" border="0" /></a></td> --%>
															<td><a
														href="showOrderForm?ProductId=${oldList.productId}"
														class="ask"><img src="resources/img/buy.png" alt="" height="30px;" width="30px;"
															title="" border="0" /></a></td>
															
												</tr>
										
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->
	</div>
</body>
</html>
