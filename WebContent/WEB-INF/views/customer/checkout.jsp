<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coffee Shop</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">


<link rel="stylesheet" href="resources/customer/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/customer/css/home.css">

<link href="https://fonts.googleapis.com/css?family=Roboto+Slab"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script|Itim|Lobster|Montserrat:500|Noto+Serif|Nunito|Patrick+Hand|Roboto+Mono:100,100i,300,300i,400,400i,500,500i,700,700i|Roboto+Slab|Saira"
	rel="stylesheet">
</head>
<body>
	<div class="topHeader">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="follow text-xs-center">
						<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-google-plus-g"></i></a>
					</div>
					<div class="callMe float-xs-right">Call Me: +011 29 345 678</div>
				</div>
				<div class="col-sm-6">

					<div class="opening ">Opening Hours : 9:00am - 10:00pm</div>


					<div class="cart follow ">
						<a href="customer/view-cart"><i class="fas fa-shopping-cart"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="nav-menu-slider">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">


				<a class="navbar-brand" href="#"><img
					src="images/slider/logo.png" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#nav-menu">
					<span class="navbar-toggler-icon navbar-light"></span>
				</button>
				<div class="collapse navbar-collapse" id="nav-menu">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item "><a class="nav-link"
							href="customer/home">HOME </a></li>
						<li class="nav-item "><a class="nav-link"
							href="customer/menu">MENU</a></li>
						<li class="nav-item"><a class="nav-link "
							href="customer/drinks">DRINKS</a></li>
						<li class="nav-item "><a class="nav-link "
							href="customer/pastries">PASTRY</a></li>
						<li class="nav-item "><a class="nav-link "
							href="customer/contact">CONTACT</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</div>

	<div class="checkout container mb-4">
		<h3>CHECKOUT</h3>

		<form:form action="customer/checkout" method="post"
			modelAttribute="order">
			
			<form:label path="username" class="label-checkout">Username</form:label>
			<form:errors path="Username" class="error-ck"></form:errors>	
			<form:input path="username" class="input-checkout"
				placeholder="Username" />
			<form:label path="phone" class="label-checkout"	>Phone</form:label>
			<form:errors path="Phone" class="error-ck"></form:errors>	
			<form:input path="phone" class="input-checkout" placeholder="Phone" />
			<form:label path="email" class="label-checkout">Email</form:label>
			<form:errors path="Email" class="error-ck"></form:errors>	
			<form:input path="email" class="input-checkout"
				placeholder="you@gmail.com" />
			<form:label path="address" class="label-checkout">Address</form:label>
			<form:errors path="Address" class="error-ck"></form:errors>	
			<form:input path="address" class="input-checkout"
				placeholder="Address" />
			<form:label path="note" class="label-checkout">Note</form:label>				
			<form:textarea path="note" class="input-checkout" placeholder="Note" />
			<div class="col mt-5">
				<div class="row m-30">
					<div class="col-sm-12  col-md-6">
						<a href="customer/view-cart" class="btn btn-block btn-light">View cart</a>
					</div>
					<div class="col-sm-12 col-md-6 text-right">
						<button class="btn btn-lg btn-block btn-success text-uppercase">Đặt
							hàng</button>
					</div>
				</div>
			</div>
		</form:form>

	</div>



	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript"
		src="resources/customer/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="resources/customer/js/bootstrap.min.js"></script>
</body>
</html>