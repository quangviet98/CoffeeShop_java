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
	<div class="col-10 offset-1 border border-primary radius-10 pt-5 pl-5 pr-5 pb-4 mt-2">
		<h3 class="text-primary text-center">${title}</h3>

		<form:form action="admin/saveMenu" method="POST" modelAttribute="menu"
			class="text-dark pt-5" enctype="multipart/form-data" >
			<form:input path="id" class="form-control col-10" id="id"
				placeholder="Input name..." hidden="true" />
			<div class="form-group row">
				<label class="col-2 col-form-label" for="name">Name</label>
				<form:input path="name" class="form-control col-10" id="name"
					placeholder="Input name..." />
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="img">Image</label>
				<form:input type="file" path="img" class="col-10" id="img"/>
			</div>

			<div class="form-group row">
				<label for="type" class="col-2">Kind of drink</label>
				<form:select path="type" class="form-control col-10" id="type">
					<form:option value="Coffee">Cà phê</form:option>
					<form:option value="Juice">Nước ép</form:option>
					<form:option value="MilkTea">Trà sữa</form:option>
					<form:option value="Pastry">Bánh ngọt</form:option>
					<form:option value="Dessert">Đồ ăn tráng miệng</form:option>
				</form:select>
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="price">Price</label>
				<form:input path="price" class="form-control col-10" id="price"
					placeholder="Input price..." />
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="discount">Discount(%)</label>
				<form:input path="discount" class="form-control col-10"
					id="discount"  />
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="info">Info</label>
				<form:input path="info" class="form-control col-10" id="info"
					placeholder="Input info..." />
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="status">Status</label>
				<div id="status" class="row col-10">
					<div class="col-md-2">
						<form:radiobutton class="mr-2" path="status" value="1" label="Sẵn sàng" />
					</div>
					<div class="col-md-2 offset-md-1">
						<form:radiobutton class="mr-2" path="status" value="0" label="Ngưng" />
					</div>	
					
				</div>
				
			</div>



			<button name="${typeSubmit}" type="submit"
				class="btn btn-facebook offset-5 pr-3 pl-3">Submit</button>
			<a class="float-right " href="admin/menu">Back to menu</a>
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