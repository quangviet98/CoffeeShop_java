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

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

    <div class="pastry-page">
        <h3 class="title">pastry</h3>
        <ul class="row list-pastry">
            
            <c:forEach items="${pastries}" var="p">
            	<li class="item-pastry">
	                <div class="img-pas">
	                    <img src="resources/uploads/${p.img}" class="img-pastry-page">
	                </div>
	                <div class="info-pastry">
	                    <p class="pastry-name f-19">${p.name}</p>
	                    <span class="price">${p.price - (p.price * p.discount/100)} VND</span>
	                    <p class="description">${p.info}</p>
	                    <button onclick="location.href='add-cart/${p.id}'">
	                        <i class="fas fa-cart-plus"></i>
	                        <span class="f-17">Thêm vào giỏ</span>
	                    </button>
	                </div>
	            </li>
            </c:forEach>
        </ul>
        <nav class="pagination">
            <ul>

            </ul>
        </nav>
    </div>


   <jsp:include page="footer.jsp"></jsp:include>
    
    <!-- link script -->    
    <script type="text/javascript" src="resources/customer/js/02.js"></script>
</body>
</html>