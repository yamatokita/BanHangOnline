<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- <%@ page import="com.fjs.banhangonline.controller.BodyController"%> --%>

<!-- Body Section -->
<div class="row">
	<%@ include file="sidebarComponent.jsp" %>
	<div class="span9">
		<!--Slide-->
		<div class="well np">
			<div id="myCarousel" class="carousel slide homCar">
				<div class="carousel-inner">
					<div class="item">
						<img style="width:100%" src="/resources/img/carousel1.png" alt="bootstrap ecommerce templates">
						<div class="carousel-caption">
							<h4>Bootstrap shopping cart</h4>
							<p>
								<span>Very clean simple to use</span>
							</p>
						</div>
					</div>
					<div class="item">
						<img style="width:100%" src="/resources/img/carousel2.png" alt="bootstrap ecommerce templates">
						<div class="carousel-caption">
							<h4>Bootstrap Ecommerce template</h4>
							<p>
								<span>Highly Google seo friendly</span>
							</p>
						</div>
					</div>
					<div class="item active">
						<img style="width:100%" src="/resources/img/carousel3.png" alt="bootstrap ecommerce templates">
						<div class="carousel-caption">
							<h4>Twitter Bootstrap cart</h4>
							<p>
								<span>Very easy to integrate and expand.</span>
							</p>
						</div>
					</div>
					<div class="item">
						<img style="width:100%" src="/resources/img/carousel4.png" alt="bootstrap templates">
						<div class="carousel-caption">
							<h4>Bootstrap templates integration</h4>
							<p>
								<span>Compitable to many more opensource cart</span>
							</p>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>


		<!--Sản phẩm mới-->
		<div class="well well-small">
			<h3>Sản phẩm mới </h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
					
						<c:forEach var="product" items="${listNewProduct}" varStatus="loop" step="4">
						<div class="item" >
							<%-- <jsp:useBean id="listarProduct" class="com.fjs.banhangonline.controller.BodyController" scope="request"/> --%>
							
								<%-- <p> "${listProduct.size()}"</p> --%>
								
								<ul class="thumbnails">
									
									<%-- <c:set var="arr_index" value="${loop.index*4 + 3}"/> --%>
									<%-- <c:set var="arr_size" value="${fn:length(listNewProduct)/4}"/>
									<fmt:parseNumber var="arr_number" integerOnly="true" type="number" value="${arr_size}"/>
									
									<c:out value="${arr_size}"></c:out>
									<c:out value="${arr_number}"></c:out>
									<c:out value="${loop.index}"></c:out> --%>
									
									<%-- <c:if test="${loop.index < arr_number}">  --%>    
										<c:forEach var = "i" begin = "0" end = "3">
								         	<c:set var="pro" value="${listNewProduct[loop.index + i]}"></c:set>
								         	
								         	<c:if test="${not empty pro.productId}">
									         	<li class="span3" >
										         	<div class="thumbnail" >
														
															<a class="zoomTool" href="/products/${pro.productId}" title="add to cart">
																<span class="icon-search"></span> XEM NGAY</a>
															<a href="#" class="tag"></a>
															<a href="/products/${pro.productId}">
																<img src="${pro.imageUrl}" alt="bootstrap-ring">
															</a>
													 </div>
												 </li>
											</c:if>
								    	 </c:forEach> 
									<%-- </c:if>  --%>  
								</ul>
						</div> 
						</c:forEach>
					</div>
					<a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
					<a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>

		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="/productlist" title="View more">Nhiều hơn
					<span class="icon-plus"></span>
				</a>Sản phẩm nổi bật 
			</h3> 
			<hr class="soften" />
			<div class="row-fluid">
				<c:forEach var="product" items="${listProduct}" varStatus="loop" step="3">
					<ul class="thumbnails">
						<c:forEach var = "i" begin = "0" end = "2">
							<c:set var="pro" value="${listProduct[loop.index + i]}"></c:set>
							
							<c:if test="${not empty pro.productId}">
								<li class="span4">
									<div class="thumbnail" >
										<a class="zoomTool" href="/products/${pro.productId}" title="add to cart">
											<span class="icon-search"></span> XEM NGAY</a>
										<a href="/products/${pro.productId}">
											<img src="${pro.imageUrl}" alt="">
										</a>
										<div class="caption">
											<h5>${listProduct[loop.index].productName}</h5>
											<h4>
												<a class="defaultBtn" href="/products/${pro.productId}" title="Click to view">
													<span class="icon-zoom-in"></span>
												</a>
							
												<button (click)="addCart(${pro.productId})" class="shopBtn" data-toggle="modal" data-target="#myModal" title="Thêm giỏ hàng">
													<span class="icon-plus"></span>
												</button>
							
												<span class="pull-right">
													<fmt:formatNumber value="${pro.price}" type="currency"  currencySymbol="$"/> 
												</span>
											</h4>
										</div>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</c:forEach>
			</div>
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

	</div>

</div>