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


                <a class="navbar-brand" href="#"><img src="resources/customer/images/slider/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-menu">
                    <span class="navbar-toggler-icon navbar-light"></span>
                </button>
                <div class="collapse navbar-collapse" id="nav-menu">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ${crtPage=='home'? 'active': '' }">
                            <a class="nav-link" href="customer/home">HOME </a>
                        </li>
                        <li class="nav-item ${crtPage=='menu'? 'active': '' }">
                            <a class="nav-link" href="customer/menu">MENU</a>
                        </li>
                        <li class="nav-item ${crtPage=='drink'? 'active': '' }">
                            <a class="nav-link " href="customer/drinks">DRINKS</a>
                        </li>
                        <li class="nav-item ${crtPage=='pastry'? 'active': '' }">
                            <a class="nav-link " href="customer/pastries">PASTRY</a>
                        </li>
                        <li class="nav-item ${crtPage=='contact'? 'active': '' }">
                            <a class="nav-link " href="customer/contact">CONTACT</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

        <div id="carouselId" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselId" data-slide-to="0" class="active"></li>
                <li data-target="#carouselId" data-slide-to="1"></li>
                <li data-target="#carouselId" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <div class="introduce">
                        <h1>COFFE SHOP</h1>
                        <p>Nơi mang lại những món ăn, thức uống thơm ngon, đặc biệt có lợi cho sức khỏe.</p>
                    </div>
                    <img src="resources/customer/images/slider/slide1.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <div class="introduce">
                        <h1>COFFE SHOP</h1>
                        <p>Nơi mang lại những món ăn, thức uống thơm ngon, đặc biệt có lợi cho sức khỏe.</p>
                    </div>
                    <img src="resources/customer/images/slider/03_Menu.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <div class="introduce">
                        <h1>COFFE SHOP</h1>
                        <p>Nơi mang lại những món ăn, thức uống thơm ngon, đặc biệt có lợi cho sức khỏe.</p>
                    </div>
                    <img src="resources/customer/images/slider/slide3.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselId" role="button" data-slide="prev">
                <span class="icon-control">
                    <i class="fas fa-chevron-left"></i>
                </span>
            </a>
            <a class="carousel-control-next" href="#carouselId" role="button" data-slide="next">
                <span class="icon-control">
                    <i class="fas fa-chevron-right"></i>
                </span>

            </a>
            <div class="opacity-slider"></div>
        </div>

    </div>
    <div class="back-to-top">Top</div>
    <!-- link script -->
    <script type="text/javascript" src="resources/customer/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="resources/customer/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="resources/customer/js/header.js"></script>
</body>
</html>