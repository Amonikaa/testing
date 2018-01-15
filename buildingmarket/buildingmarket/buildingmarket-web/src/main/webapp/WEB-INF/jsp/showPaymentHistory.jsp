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
			$('#historyPay').DataTable();
		});
	</script>
</head>

<body>
	<div id="wrapper">
		<!-- Navigation -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Payment History</h1>
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
									id="historyPay">
									<thead>
										<tr>
											<th>Id</th>
											<th>Product Name</th>
											<th>Email</th>
											<th>Amount</th>
											<th>Currency</th>
											<!-- <th>Delete</th> -->
										</tr>
									</thead>
									<tbody>
										<c:if test="${empty paymentHistoryList }">
											<tr class="odd gradeX">
												<td colspan="8">No Payment Found</td>
											</tr>
										</c:if>
										<c:if test="${not empty paymentHistoryList}">
											<c:forEach var="paymentHistoryList" items="${paymentHistoryList}">
												<tr class="odd gradeX">
													<td>${paymentHistoryList.paymentRecordId}</td>
													<td>${paymentHistoryList.product.productName}</td>
													<td>${paymentHistoryList.email}</td>
													<td>${paymentHistoryList.amount}</td>
													<td>${paymentHistoryList.currency}</td>
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
