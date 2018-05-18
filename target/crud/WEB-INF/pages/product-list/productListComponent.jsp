<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- <%@ page import="com.fjs.banhangonline.controller.BodyController"%> --%>

<div class="row">
	<%@ include file="../body/sidebarComponent.jsp" %>
	<div class="span9">
		<div class="well well-small">
			<c:forEach var="pro" items="${listProduct}" varStatus="loop">

				<div class="row-fluid">
					<div style="margin-top: 20px" class="span2">
						<img src="${pro.imageUrl}" alt="">
					</div>
	
					<div style="margin-top: 20px" class="span5">
						<h5>${pro.productName} </h5>
						<p>${pro.productDetail} </p>
					</div>
	
					<div class="span5 alignR">
						<form class="form-horizontal qtyFrm">
							<h3><fmt:formatNumber value="${pro.price}" type="currency" currencySymbol=""/></h3>
							<label class="checkbox"><input type="checkbox"> Thêm vào mục yêu thích</label>
							<div class="btn-group">
								<button (click)="addCart(${pro.productId})" class="defaultBtn" data-toggle="modal" data-target="#myModal">
									<span class=" icon-shopping-cart"></span> Thêm giỏ hàng</button>
								<button class="shopBtn btn-link" routerLink="/products/${pro.productId}" >Xem chi tiết</button>
							</div>
						</form>
					</div>
					<hr class="soften">
				</div>
			</c:forEach>
			<hr class="soften">
		</div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body">
						<p>Đã thêm thành công vào giỏ hàng</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>

		<!-- <pagination-controls (pageChange)="page = $event" id="1" maxSize="5" directionLinks="true" autoHide="true">
		</pagination-controls> -->
	</div>
</div>