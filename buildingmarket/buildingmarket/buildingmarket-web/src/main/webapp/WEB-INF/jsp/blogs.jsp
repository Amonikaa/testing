<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US"
	prefix="og: http://ogp.me/ns#">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>	
<head>
</head>
<body>
	<div>
		<section id="content-wrapper" class="content-wrapper clearfix">
			<div class="page-title-wrapper">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-7">
							<h2>Blog :-</h2>
						</div>
					</div>
				</div>
			</div>
			<!--Main Home Page Content-->
			<div>
				<c:forEach var="blog" items="${blogs}">
					<div class="container">
						<div class="row">
							<h1>${blog.blogsTitle}</h1>
							<!-- .post-title -->
							<div class="post-content clearfix">
								<p>${blog.description}</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>
	</div>
</body>
</html>