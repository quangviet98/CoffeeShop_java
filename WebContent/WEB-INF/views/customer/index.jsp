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
    <div class="menu">
        <div class="container">
            <div class="row">
                <h1>MENU</h1>
                <ul class="index-menu">
                    <li name="Hot" class="active "><a href="javascript:void(0)">HOT</a></li>
                    <li name="Drink"><a href="javascript:void(0)">DRINKS</a></li>
                    <li name="Pastry"><a href="javascript:void(0)">PASTRY</a></li>
                    <li name="Dessert"><a href="javascript:void(0)">DESSERTS</a></li>
                </ul>
            </div>
            <ul class="menu-img menu-img-index  grid">
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
            <a href="customer/menu" class="menu-view">VIEW MORE</a>

        </div>
    </div>
    <div class="drinks">
        <div class="row">
            <img src="resources/customer/images/drinks/drinks_homepage.jpg" alt="">
            <div class="introduce_drinks">
                <div class="top-drink">
                    <a href="customer/drinks" class="drinks_title">DRINK</a>
                    <ul class="nav-drink">
                        <li class="active"><a href="javascript:void(0)">COFFE</a></li>
                        <li><a href="javascript:void(0)">MILK-TEA</a></li>
                        <li><a href="javascript:void(0)">JUICE</a></li>

                    </ul>
                    <h3>Thức uống có lợi cho sức khỏe</h3>
                    <p>Sự kết hợp giữa cà phê, trà và các loại trái cây mang đến thức uống tươi mát,
                     giải nhiệt cho ngày hè oi bức. Bổ sung dinh dưỡng cần thiết cho cơ thể.</p>
                </div>
                <div class="bottom-drink">
                    <ul>
                    	<c:forEach items="${drinks}" var="d">
                    		<li>
	                            <span class="name-drink">${d.name}</span>
	                            <span class="price-drink">${d.price - (d.price * d.discount/100)}</span>
	                            <p class="info-drink">${d.info}</p>
	                            <a href="add-cart/${d.id}" class="cart-drink"><i class="fas fa-cart-plus"></i></a>
	                        </li>
                    	</c:forEach>                      
                        
                    </ul>

                </div>
                <div class="icon-prev-next">
                    <a href="javascript:void(0)" class="icon-prev"><i class="fas fa-chevron-left"></i></a>
                    <a href="javascript:void(0)" class="icon-next"><i class="fas fa-chevron-right"></i></a>
                </div>


            </div>
        </div>
    </div>
    <div class="pastrys">
        <div class="row">

            <div class="introduce_pastry">
                <div class="top-pastry">
                    <a href="customer/pastries" class="pastry_title">PASTRY</a>
                    <ul class="nav-pastry">
                        <li name="" class="active"><a href="javascript:void(0)">COFFEE</a></li>
                        <li><a href="javascript:void(0)">FRAPPE</a></li>
                        <li><a href="javascript:void(0)">FREEZE</a></li>

                    </ul>
                    <h3>Những loại bánh ngọt mới lạ</h3>
                    <p>Vị ngọt nhẹ hòa cùng chút đắng nhẹ của cà phê làm bánh trở nên thơm ngây ngất...</p>
                </div>
                <div class="bottom-pastry">
                    <ul>
	                    <c:forEach items="${pastries}" var="p">
	                   		 <li>
	                            <span class="name-pastry">${p.name}</span>
	                            <span class="price-pastry">${p.price - (p.price * p.discount/100)}</span>
	                            <p class="info-pastry">${p.info}</p>
	                            <a href="add-cart/${p.id}" class="cart-pastry"><i class="fas fa-cart-plus"></i></a>
	                        </li>
	                    </c:forEach>
                     </ul>


                </div>
                <div class="icon-prev-next">
                    <a href="javascript:void(0)" class="icon-prev"><i class="fas fa-chevron-left"></i></a>
                    <a href="javascript:void(0)" class="icon-next"><i class="fas fa-chevron-right"></i></a>
                </div>

            </div>
            <div class="img-pastry">
                <img src="resources/customer/images/pastry/pastry01_03.jpg" alt="">
                <img src="resources/customer/images/pastry/pastry03_03.jpg" alt="">
                <img src="resources/customer/images/pastry/pastry02_03.jpg" alt="">

            </div>
        </div>
    </div>
    <div class="contact">
        <div class="container">
            <h3>CONTACT US</h3>
            <div class="row">
                <div class="col-md-6 maps">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.7623376064203!2d106.71140071411678!3d10.829491161174888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752887b396ec3d%3A0xe3bc84cba974d3db!2zNWMgxJDGsOG7nW5nIHPhu5EgNSwgSGnhu4dwIELDrG5oIENow6FuaCwgVGjhu6cgxJDhu6ljLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1554044153794!5m2!1svi!2s"
                        width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <form:form action="customer/add-feedback" method="post" class="col-md-6 form-contact" modelAttribute="feedback">
                    <form:input type="text" path="username" placeholder="Name"/>
                    <form:input type="text" path="email" placeholder="Email"/>
                    <form:input type="text" path="phone" placeholder="Phone"/>
                    <form:textarea path="message" cols="30" rows="10" placeholder="Message..."></form:textarea>
                    <button type="submit">SEND</button>
                </form:form>
            </div>



        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    
     <!-- link script -->   
    <script type="text/javascript" src="resources/customer/js/01.js"></script>
</body>
</html>