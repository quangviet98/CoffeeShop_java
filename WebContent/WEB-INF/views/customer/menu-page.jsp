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
    <div class="menu bg-fff">
        <div class="container">
            <div class="row">
                <h1>MENU</h1>
                <ul class="nav-menu">
                    <li name="Hot" class="active "><a href="javascript:void(0)" >ALL</a></li>
                    <li name="Drink"><a href="javascript:void(0)" >DRINKS</a></li>
                    <li name="Pastry"><a href="javascript:void(0)">PASTRY</a></li>
                    <li name="Dessert"><a href="javascript:void(0)">DESSERTS</a></li>
                </ul>
            </div>
            <ul class="menu-img grid">
               <c:forEach items="${menus}" var="m">
	               <li class="grid-item ${m.type}  Hot">
                    <div class="box-cart">
                        <div class="background-cart"></div>
                        <img src="resources/uploads/${m.img}" alt="">
                        <div class="cart-btn">
                            <button onclick="location.href='add-cart/${m.id}'">
                                <i class="fas fa-cart-plus"></i>
                                <span>Thêm vào giỏ</span>
                            </button>
                        </div>
                    </div>
                    <div class="menu-info">
                        <div class="title">${m.name}</div>
                        <span class="price">${m.price - (m.price * m.discount/100)}</span>
                        <p class="description">${m.info}</p>
                    </div>
                </li>
               </c:forEach>
                

               
            </ul>


            <nav class="pagination">
                <ul>

                </ul>
            </nav>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    
    <!-- link script -->   
    <script type="text/javascript" src="resources/customer/js/01.js"></script>
</body>
</html>