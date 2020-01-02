<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coffee Shop</title>
<base href="${pageContext.servletContext.contextPath}/" >
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
	<div class="col-10 offset-1 border border-primary radius-10 p-5 mt-5">
		<h3 class="text-primary text-center">${title}</h3>
		
		<form:form action="admin/saveStaff" method="POST" modelAttribute="staff" class="text-dark pt-5">
			<form:input path="id" class="form-control col-10" id="id"
					placeholder="Input name..." hidden="true"/>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="name">Name</label>
				 <form:input path="name" class="form-control col-10" id="name"
					placeholder="Input name..."/>
			</div>

			<div class="form-group row">
				<label for="pos" class="col-2">Position</label> 
				<form:select path="position" items="${positions}"
					class="form-control col-10" id="pos">					
				</form:select>
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="phone">Phone</label>
				 <form:input path="phone"
					class="form-control col-10" id="phone" placeholder="Input phone..."/>
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="dayOff">Days Off</label>
				 <form:input path="dayOff"
					class="form-control col-10" id="dayOff"
					value="0"/>
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="salary">Salary</label>
				<form:input path="salary" class="form-control col-10" id="salary"
					placeholder="Input salary..." />
			</div>


			<button name="${typeSubmit}" type="submit" class="btn btn-facebook offset-5 pr-3 pl-3">Submit</button>
			<a class="float-right " href="admin/staffs">Back to staffs</a>
		</form:form>
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

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/demo/datatables-demo.js"></script>
</body>
</html>