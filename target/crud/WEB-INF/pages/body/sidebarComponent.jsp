<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="sidebar" class="span3">	
	<div class="well well-small">
		<ul class="nav nav-list">
			<li ><a (click)="gotoSearch_SP(1)" href="typeProduct"><span class="icon-chevron-right"></span>Bộ sưu tập</a></li>
			<li ><a (click)="gotoSearch_SP(2)" href="typeProduct"><span class="icon-chevron-right"></span>Trang sức cưới</a></li>
			<li ><a (click)="gotoSearch_SP(3)" href="typeProduct"><span class="icon-chevron-right"></span>Trang sức vàng</a></li>
			<li ><a (click)="gotoSearch_SP(4)" href="typeProduct"><span class="icon-chevron-right"></span>Trang sức bạc</a></li>
			<li ><a (click)="gotoSearch_SP(5)" href="typeProduct"><span class="icon-chevron-right"></span>Kim cương</a></li>
			<li ><a (click)="gotoSearch_SP(6)" href="typeProduct"><span class="icon-chevron-right"></span>Đá quý</a></li>
			<li ><a (click)="gotoSearch_SP(7)" href="typeProduct"><span class="icon-chevron-right"></span>Ngọc trai</a></li>
	      	<li class="dropdown">
		        <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-chevron-right"></span>Đồng hồ</a>
		        <div class="dropdown-menu">
		          <form class="form-horizontal loginFrm">
		            <div class="control-group">
		              <li class="active"><a (click)="gotoSearch_SP(8)" href="typeProduct"><span class="icon-chevron-right"></span>Đồng hồ nam </a></li>
		            </div>
		            <div class="control-group">
		              <li class="active"><a (click)="gotoSearch_SP(9)" href="typeProduct"><span class="icon-chevron-right"></span>Đồng hồ nữ </a></li>
		            </div>
		          </form>
		        </div>
	      	</li>      
			<li style="border:0"> &nbsp;</li> 
		</ul>
	</div>

	<div class="well well-small"><a href="#"><img src="resources/img/paypal.jpg" alt="payment method paypal"></a></div>

	<ul class="nav nav-list promowrapper">
		<li>
			<div class="thumbnail">
				<div id="myCarousel" class="carousel slide cntr">
						<div class="carousel-inner"> 
							<div class="item" *ngFor ="let prod of singleCarouselProducts; let i=index">
							
							<c:forEach var="prod" items="${listProduct}" varStatus="loop">
								<a class="zoomTool" href ="/products/${prod.productId}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
								<img src="${prod.imageUrl}">
								<div class="caption">
									<h4>
										<a class="defaultBtn" href ="/products/${prod.productId}">Xem ngay</a> 
										<span class="pull-right"><fmt:formatNumber value="${prod.price}" type="currency" currencySymbol=""/></span>
									</h4>
								</div>
							</c:forEach>
							
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
					</div>
			</div>
		</li>
	</ul>

</div>
<!-- <router-outlet></router-outlet> -->
