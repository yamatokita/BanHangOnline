<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.fjs.banhangonline.controller.AppGlobals"%>

<!--Lower Header Section -->
<div id="gototop"> </div>
<header id="header">
	<div class="row">
		<div class="span4">
			<a class="logo" href="${home_url}">
				<span>Twitter Bootstrap ecommerce template</span>
				<img src="resources/img/lotus.png" alt="bootstrap sexy shop">
			</a>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i>
					Wellcome to Lotus jeweiry....
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br>
				<strong> Hỗ trợ (24/7) : 0800 1234 678 </strong>
				<br>
				<br>
			</p>
		</div>
	</div>
</header>

<!--Navigation Bar Section -->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
		
					<%-- <c:set var="url" value="${pageContext.request.requestURI}" /> --%>
					<%-- <c:out value="<%=AppGlobals.shareObj%>"></c:out>  --%>
					
					<c:if test="${param.tabName == ''}"><%AppGlobals.shareObj="home";%> </c:if>
					<c:if test="${param.tabName == 'productlist'}"><%AppGlobals.shareObj="productlist";%> </c:if>
					<c:if test="${param.tabName == 'generalcontent'}"><%AppGlobals.shareObj="generalcontent";%> </c:if>
					<c:if test="${param.itemsearch != null}"><%AppGlobals.shareObj="itemsearch";%> </c:if> 
					
					<c:set var="url" value="<%=AppGlobals.shareObj%>" />
					
					<li <c:if test = "${fn:contains(url, 'home')}">class="active"</c:if> > 
						<a href="${home_url}">Trang chủ</a>
					</li>
					<li <c:if test = "${fn:contains(url, 'productlist')}">class="active"</c:if> >
						<a href="${home_url}?tabName=productlist" >Tất cả sản phẩm</a>
					</li>
					<li <c:if test = "${fn:contains(url, 'productfavorite')}">class="active"</c:if> >
						<a href="productfavorite">Sản phẩm yêu thích</a>
					</li>
					<li <c:if test = "${fn:contains(url, 'generalcontent')}">class="active"</c:if> >
						<a href="${home_url}?tabName=generalcontent">Nội dung</a>
					</li>

					<li id="admin" style="visibility: hidden" <c:if test = "${fn:contains(url, 'admin')}">class="active"</c:if> >
						<a href="admin">Quản lý</a>
					</li> 
					
					<form action="#" class="navbar-search pull-left">
						<!-- <input style="height: 30px" type="text" placeholder="Search"  [(ngModel)]="itemsearch" name="itemsearch" (keyup.enter)="gotoSearch()"> -->
						<input style="height: 30px" type="text" placeholder="Search"  name="itemsearch"  onKeyDown="gotoSearch()">
					</form>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- <router-outlet></router-outlet> -->