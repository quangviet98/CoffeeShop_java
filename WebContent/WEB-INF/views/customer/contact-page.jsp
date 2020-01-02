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
    <div class="contact">
        <div class="container">
            <h3>CONTACT US</h3>
            <div class="row">
                <div class="col-md-6 maps">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.7623376064203!2d106.71140071411678!3d10.829491161174888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752887b396ec3d%3A0xe3bc84cba974d3db!2zNWMgxJDGsOG7nW5nIHPhu5EgNSwgSGnhu4dwIELDrG5oIENow6FuaCwgVGjhu6cgxJDhu6ljLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1554044153794!5m2!1svi!2s"
                        width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <form:form action="customer/add-feedback" class="col-md-6 form-contact" modelAttribute="feedback">
                    <form:errors path="Username" class="error-val"></form:errors>
                    <form:input type="text" path="Username" placeholder="Name"/>
                    <form:errors path="Email" class="error-val"></form:errors>
                    <form:input type="text" path="Email" placeholder="Email"/>
                    <form:errors path="Phone" class="error-val"></form:errors>
                    <form:input type="text" path="Phone" placeholder="Phone"/>
                    <form:errors path="Message" class="error-val"></form:errors>
                    <form:textarea path="Message" cols="30" rows="10" placeholder="Message..."></form:textarea>
                    <button>SEND</button>
                </form:form>
            </div>



        </div>

    </div>
   	<jsp:include page="footer.jsp"></jsp:include>
    
    <!-- link script -->    
    <script type="text/javascript" src="resources/customer/js/01.js"></script>
</body>
</html>