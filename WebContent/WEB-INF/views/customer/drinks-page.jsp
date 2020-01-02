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
    <div class="drinks">
        <div class="title_drinks">
            <h3>DRINK</h3>
            <p>Nhiều loại thức uống bổ sung các chất dinh dưỡng thiết yếu cho cơ thể.</p>
        </div>
        <div class="coffee">

            <div class="row">
                <div class="list-coffee">
                    <h3 class="title">COFFEE</h3>
                    <ul class="list-scroll">                        
                        <c:forEach items="${coffees}" var="c">
                        	<li class="item">
	                            <div class="title-item">${c.name}</div>
	                            <span class="price-item">${c.price - (c.price * c.discount/100)}</span>
	                            <p class="description-item">${c.info}</p>
	                            <a href="add-cart/${c.id}" class="cart-drink drink-page"><i class="fas fa-cart-plus"></i></a>
	                        </li>
                        </c:forEach>                        
                    </ul>
                </div>
                <div class="img-coffee">
                    <img src="resources/customer/images/drinks/drink-bg01.jpg" alt="">
                </div>
            </div>

        </div>
        <div class="frappe">

            <div class="row">
                <div class="list-frappe">
                    <h3 class="title">MILK TEA</h3>
                    <ul class="list-scroll">
                        <c:forEach items="${milkTeas}" var="m">
                        	<li class="item">
	                            <div class="title-item">${m.name}</div>
	                            <span class="price-item">${m.price - (m.price * m.discount/100)}</span>
	                            <p class="description-item">${m.info}</p>
	                            <a href="add-cart/${m.id}" class="cart-drink drink-page"><i class="fas fa-cart-plus"></i></a>
	                        </li>
                        </c:forEach>                          
                    </ul>
                </div>
                <div class="img-frappe">
                    <img src="resources/customer/images/drinks/drink-bg02.jpg" alt="">
                </div>
            </div>

        </div>
        <div class="juice">
            <div class="row">
                <div class="list-juice">
                    <h3 class="title">JUICE</h3>
                    <ul class="list-scroll">
                        <c:forEach items="${juices}" var="j">
                        	<li class="item">
	                            <div class="title-item">${j.name}</div>
	                            <span class="price-item">${j.price - (j.price * j.discount/100)}</span>
	                            <p class="description-item">${j.info}</p>
	                            <a href="add-cart/${j.id}" class="cart-drink drink-page"><i class="fas fa-cart-plus"></i></a>
	                        </li>
                        </c:forEach>                        
                    </ul>
                </div>
                <div class="img-juice">
                    <img src="resources/customer/images/drinks/drink-bg03.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
	
    
    <!-- link script -->
    <script type="text/javascript" src="resources/customer/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="resources/customer/js/bootstrap.min.js"></script>   
    <script type="text/javascript" src="resources/customer/js/01.js"></script>
</body>
</html>