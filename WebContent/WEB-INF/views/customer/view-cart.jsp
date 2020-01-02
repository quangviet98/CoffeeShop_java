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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


    <link rel="stylesheet" href="resources/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/customer/css/home.css">   

    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Itim|Lobster|Montserrat:500|Noto+Serif|Nunito|Patrick+Hand|Roboto+Mono:100,100i,300,300i,400,400i,500,500i,700,700i|Roboto+Slab|Saira"
        rel="stylesheet">
</head>
<body>
	<div class="topHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="follow text-xs-center">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-google-plus-g"></i></a>
                    </div>
                    <div class="callMe float-xs-right">
                        Call Me: +011 29 345 678
                    </div>
                </div>
                <div class="col-sm-6">

                    <div class="opening ">
                        Opening Hours : 9:00am - 10:00pm
                    </div>


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


                <a class="navbar-brand" href="#"><img src="images/slider/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-menu">
                    <span class="navbar-toggler-icon navbar-light"></span>
                </button>
                <div class="collapse navbar-collapse" id="nav-menu">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link" href="customer/home">HOME </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="customer/menu">MENU</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="customer/drinks">DRINKS</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link " href="customer/pastries">PASTRY</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link " href="customer/contact">CONTACT</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>


    <div class="content-cart container mb-4">
        <h3>VIEW YOUR CART</h3>
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col"> </th>
                                <th scope="col">Product</th>
                                <th scope="col" class="text-center">Quantity</th>
                                <th scope="col" class="text-center">Price</th>
                                <th scope="col" class="text-right">Total</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach items="${cart}" var="item">
                            	
                            	<tr>
                            	
	                                <td><img class="img-50" src="resources/uploads/${item.product.img}" /> </td>
	                                <td>${item.product.name }</td>
	                                <td><input class="form-control"  type="text" name="quantity"  value="${item.quantity}" /></td>
	                        	    <td class="text-center">${item.product.price-item.product.price*item.product.discount/100 }</td>
	                                <td class="text-right">${item.price}</td>
	                                <td class="text-right"><a href="view-cart/update-cart-item/${item.product.id}" class="btn btn-sm btn-success btn-del"><i class="fas fa-sync-alt"></i></a> 
	                                <a href="view-cart/del-cart-item/${item.product.id}" class="btn btn-sm btn-danger btn-del"><i class="fas fa-trash-alt"></i> </a> 
	                                </td>
	                           	 </tr>
	                           	 
                            </c:forEach>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-right">Sub-Total</td>
                                <td class="text-right"></td>
                            </tr>

                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-right"><strong>Total</strong></td>
                                <td class="text-right"><strong>             
                              		${total}                                	
                                </strong></td>
                            </tr>
                        </tbody>
                    </table>
                    
                </div>
            </div>
            <div class="col mb-2">
                <div class="row">
                    <div class="col-sm-12  col-md-6">
                     <%-- onclick="location.href='customer/home'"--%>
                        <button onclick="javascript:history.back()" class="btn btn-block btn-light">Continue Shopping</button>
                    </div>
                    <div class="col-sm-12 col-md-6 text-right">
                        <button onclick="location.href='customer/checkout'" class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


   <jsp:include page="footer.jsp"></jsp:include>    
    <script type="text/javascript" src="resources/customer/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="resources/customer/js/bootstrap.min.js"></script>
</body>
</html>