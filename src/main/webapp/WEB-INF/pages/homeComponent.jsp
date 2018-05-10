<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<%@ include file="header/upperHeaderComponent.jsp" %> 

</head>
<body>
    <div class="container">
	<!--Lower Header and Navigation Bar Section -->
	<%@ include file="header/headerComponent.jsp" %>
	<%@ include file="body/bodyComponent.jsp" %>   

	
	<%@ include file="footer/clientsComponent.jsp" %>
	<%@ include file="footer/footerComponent.jsp" %>
</div><!-- /container -->

</body>
</html>