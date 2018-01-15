<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<title>BuildingMarket</title>
<!-- Theme CSS -->
<link href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/form.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<style>
.error-msg {
	color: #ff0000;
	font-style: italic;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
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
		<c:when test="${not empty errorMessage}">
			<div class="form-group">
				<div class="alert alert-danger" id="forMsgDisplay"
					style="display: block; margin-bottom: 0px;">
					<span style="padding-left: 486px;"> ${errorMessage}</span>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		</c:when>
		<c:when test="${not empty verifiedMessage}">
			<div class="form-group">
				<div class="alert alert-success" id="forMsgDisplay"
					style="display: block; margin-bottom: 0px;">
					<span style="padding-left: 486px;"> ${verifiedMessage}</span>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		</c:when>
	</c:choose>
	<div class="header">
		<div class="wrap">
			<div class="header-main">

				<div class="header-bottom">
					<div class="header-left green-headleft">
						<div class="header-left-top">
							<div class="sign-up">
								<h3>PLEASE LOGIN HERE</h3>
							</div>
							<div class="clear"></div>
						</div>
						<div class="header-left-bottom">

							<form:form class="form-horizontal" id="myform"
								action="adminLogin" method="POST" modelAttribute="admin">

								<form:input class="user active" id="adminEmail"
									required="required" placeholder="Enter email" path="adminEmail" maxlength="50"/>
								<form:errors path="adminEmail" cssClass="error-msg" />
								<form:password path="adminPassword" class="lock active" id="pwd"
									required="required" placeholder="Enter password" maxlength="50"/>
								<form:errors path="adminPassword" cssClass="error-msg" />
								<input type="submit" value="Login">
							</form:form>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>