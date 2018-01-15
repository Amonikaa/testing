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
	<div id="wrapper">
		<!-- Navigation -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Manage Order Detail</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading"></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>Id</th>
											<th>Name</th>
											<th>Mobile</th>
											<th>Product</th>
											<th>Quantity</th>
											<th>Price</th>
											<th>Delivery Date</th>
											<th>Delivery Address</th>

										</tr>
									</thead>
									<tbody>
										
										<c:if test="${not empty orderList}">
											<c:forEach var="orderList" items="${orderList}">
												<tr class="odd gradeX">
													<td>${orderList.roderFormId}</td>
													<td>${orderList.user.firstName}</td>
													<td>${orderList.user.mobileNumber}</td>
													<td>${orderList.product}</td>
													<td>${orderList.quantity}</td>
													<td>${orderList.price}</td>
													<td>${orderList.deliveryDate}</td>
													<td>${orderList.deliveryAddress}</td>

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
