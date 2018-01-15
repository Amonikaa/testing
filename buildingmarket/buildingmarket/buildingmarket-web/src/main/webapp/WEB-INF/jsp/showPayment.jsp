<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.stripe-button-el{
    margin-top: 7% !important;
    margin-left: 24% !important;
    width: 49% !important;
    }
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
<div id="wrapper">
		<!-- Navigation -->
<div id="page-wrapper">

<form:form method="POST" action="savePayment" modelAttribute="OrderForm" class="order-form" id="orderForm">
<script
  src="https://checkout.stripe.com/checkout.js" class="stripe-button"
  data-key="pk_test_4DO5qrvotJU1qYWocqdRu36L"
  data-amount="${amount}"
  data-name="000123456789"
  data-description="2 widgets"
  data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
  data-locale="auto">
</script>
<form:hidden path="product"/>
<form:hidden path="quantity"/>
<form:hidden path="deliveryDate"/>
<form:hidden path="amount" value="${amount}"/>
<form:hidden path="type"/>
<form:hidden path="sellerId"/>
<form:hidden path="ProductId"/>
<form:hidden path="productQuantity"/>
<form:hidden path="deliveryAddress"/>
<form:hidden path="price"/>

</form:form>
</div>
</div>
</body>
</html>