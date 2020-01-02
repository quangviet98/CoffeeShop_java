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
	<div
		class="col-10 offset-1 border border-primary radius-10 pl-5 pr-5 pt-4 pb-3 mt-2 mb-5">
		<h3 class="text-primary text-center">Chi tiết đơn đặt hàng</h3>
		<ul>
			<li><label class="mr-1">Username: </label>${order.username }</li>
			<li><label class="mr-1">Phone: </label>${order.phone }</li>
			<li><label class="mr-1">Email: </label>${order.email }</li>
			<li><label class="mr-1">Order time: </label>${order.orderTime }</li>
			<li><label class="mr-1">Address: </label>${order.address}</li>
			<li><label class="mr-1">Note: </label>${order.note}</li>
			<li><label class="mr-1">Status: </label>${order.status ? "Đã giao" : "Chưa giao"}</li>
		</ul>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>Name</th>
							<th>Quantity</th>
							<th>Price</th>							
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${order.orderDetails}" var="o">
							<tr>
								<td>${o.product.name}</td>
								<td>${o.quantity}</td>
								<td>${o.price}</td>
								
							</tr>
						</c:forEach>					
					</tbody>
				</table>
			</div>
		</div>
		<div class="price-total"><label class="mr-1 font-weight-bold">Total: </label>${total}</div>
		<br>
		<a href="admin/update?OrderID=${order.id}" class="btn  offset-5 pr-3 pl-3 mb-4 ${order.status ? "disable btn-secondary" : "btn-facebook" }">Chốt đơn hàng</a>
		
		<a class="float-right mb-4 mr-3" href="admin/orders">Back to Orders</a>
		
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