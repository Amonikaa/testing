<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<title>BuildingMarket</title>
<style type="text/css">
.error {
	color: red;
	font-style: italic;
}
</style>
<!-- Theme CSS -->
<link href="resources/css/form.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/buildingmarket/js/user.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script>
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
	</c:choose>
	<div class="header">
		<div class="wrap">
			<div class="header-main">
				<div class="header-bottom">
					<div class="header-left green-headleft">
						<div class="header-left-top">
							<div class="sign-up">
								<h3>FORGOT PASSWORD</h3>
							</div>
							<div class="clear"></div>
						</div>
						<div class="header-left-bottom">

							<form:form class="form-horizontal" id="forgot"
								action="forgotpasswordAction" method="POST" modelAttribute="user">

								<form:input class="user active email" id="userEmail"
									required="required" placeholder="Enter email" path="userEmail" />
								<form:errors path="userEmail" cssClass="error-msg" />

								<input type="submit" value="Submit">


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