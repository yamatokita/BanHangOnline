<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.fjs.banhangonline.controller.AppGlobals"%>

<!-- 	Upper Header Section -->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				
				<c:if test="${param.tabName == 'aboutus'}"><%AppGlobals.shareObj="aboutus";%> </c:if>
				<c:if test="${param.tabName == 'contact'}"><%AppGlobals.shareObj="contact";%> </c:if>
				<c:if test="${param.tabName == 'register'}"><%AppGlobals.shareObj="register";%> </c:if>
				
				<a href="${home_url}" class=""> <span class="icon-home"></span> Trang chủ</a> 
				<a href="${home_url}?tabName=contact" class=""><span class="icon-edit"></span> Liên hệ</a>
				<a href="${home_url}?tabName=aboutus" class=""><span class="icon-envelope"></span> Giới thiệu</a>
				<%-- <a href="cart" class="active"><span class="icon-shopping-cart"></span> {{totalCart}} Sản phẩm - <span class="badge badge-warning"> ${{totalCurrency | number: '1.2-2'}}</span></a> --%>
				<%@ include file="../login/loginComponent.jsp" %>
			</div>
			<!-- <router-outlet></router-outlet> -->
		</div>
	</div>
</div>