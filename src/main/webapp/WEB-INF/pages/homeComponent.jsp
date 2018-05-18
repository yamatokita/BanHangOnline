<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.fjs.banhangonline.controller.AppGlobals"%>
 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<%@ include file="header/upperHeaderComponent.jsp" %> 
	
	<!-- Bootstrap styles -->
	<link href="/resources/css/bootstrap.css" rel="stylesheet"/>
	<!-- Customize styles -->
	<link href="/resources/css/styles.css" rel="stylesheet"/>
	<link  href="/resources/css/forms.css" rel="stylesheet">
	<!-- font awesome styles -->
	<link href="/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
	
	
	<!--<link rel="icon" type="image/x-icon" href="favicon.ico">-->
	<link rel="shortcut icon" href="/resources/ico/favicon.ico">
	
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.easing-1.3.min.js"></script>
	<script src="/resources/js/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="/resources/js/shop.js"></script>

</head>
<body>
    <div class="container">
	<!--Lower Header and Navigation Bar Section -->
	<%@ include file="header/headerComponent.jsp" %>
	
	<c:set var="url" value="<%=AppGlobals.shareObj%>" />
	<%-- <c:out value="${url}"></c:out> --%>
					
	<c:if test = "${fn:contains(url, 'home')}">
		<%@ include file="body/bodyComponent.jsp" %>   
	</c:if> 
	<c:if test = "${fn:contains(url, 'productlist')}">
		<%@ include file="product-list/productListComponent.jsp" %>   
	</c:if> 				
	

	
	<%@ include file="footer/clientsComponent.jsp" %>
	<%@ include file="footer/footerComponent.jsp" %> 
</div><!-- /container -->

</body>
</html>