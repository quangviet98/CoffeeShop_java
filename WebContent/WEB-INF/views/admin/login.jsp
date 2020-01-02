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
<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath}/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<body id="page-top">

	<div class="img-login">
		<img alt="" src="resources/customer/images/slider/04_Menu.png">
	</div>
	<div class="col-6 content-login mt-5">

		<div class="card o-hidden my-5 col-8 offset-2 bg-login ">

			<div class="col-lg-12 ">
				<div class="p-5">
					<div class="text-center">
						<h1 class="h4 text-gray-900 mb-4">Admin Login</h1>
					</div>
					<form:form class="user" action="admin/login" method="post" modelAttribute="admin">
						<div class="form-group">
							<form:errors path="email" class="error-val"></form:errors>
							<form:input type="email" class="form-control form-control-user" path="email"
								placeholder="Email"/>
							
						</div>
						<div class="form-group">
							<form:errors path="password" cssClass="error-val"></form:errors>
							<form:password class="form-control form-control-user"
							 path="password" placeholder="Password"/>
							
						</div>

						<button	class="btn btn-primary btn-user btn-block mt-4"> Login </button>
					</form:form>
				</div>

			</div>
		</div>

	</div>



	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/sb-admin-2.min.js"></script>


</body>
</html>