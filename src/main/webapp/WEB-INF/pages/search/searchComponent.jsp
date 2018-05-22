<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="row">
	<%@ include file="../body/sidebarComponent.jsp" %>
	<div class="span9">
		<div class="well well-small">
		
			<c:set var="arr_size" value="${fn:length(listProductPagingSearch)}"/>
			
			<c:if test="${arr_size <= 0 && empty param.page}">
				<div class="row-fluid" >
					<p>Your search <b>"${param.itemsearch}"</b> did not match any products.</p>
	
					<b>Try something like</b>
					<p>&#8718;	Using more general terms <br>
					&#8718;	Checking your spelling</p>
				</div>
			</c:if>
			
			<c:if test="${arr_size > 0 }">
				<div class="row-fluid">
					<p>${arr_size} results for <b>"${param.itemsearch}"</b></p>
				</div> 
			</c:if>
			
			<hr class="soften"> 
			
			<c:forEach var="pro" items="${listProductPagingSearch}" varStatus="loop">
				<div class="row-fluid" >	  
	
					<div class="span2">
						<img src="${pro.imageUrl}" alt="">
					</div>
	
					<div class="span6">
						<h5>${pro.productName} </h5>
						<p>${pro.productDetail} </p>
					</div>
	
					<div class="span4 alignR">
						<form class="form-horizontal qtyFrm">
						<h3><fmt:formatNumber value="${pro.price}" type="currency" currencyCode="USD" currencySymbol=""/></h3>
						<label class="checkbox">
							<input type="checkbox">  Adds product to compair
						</label><br>
						<div class="btn-group">
							<a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
							<a href="product_details.html" class="shopBtn">VIEW</a>
						</div>
						</form>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<c:set var="cur_page" value="${param.page}"/>
		<div class="pagination">
		    <ul>
	        	<li>
		        	<c:if test="${cur_page > startpage}">
		        		<a href="${home_url}?page=${cur_page-1}&itemsearch=${param.itemsearch}">&lt;&lt;Previous</a>
		        	</c:if>
	        	</li>
	        	
		        <c:forEach begin="${startpage}" end="${endpage_s}" var="p">
		        	<li <c:if test="${cur_page == p}">class="active"</c:if>>
		        		<a href="${home_url}?page=${p}&itemsearch=${param.itemsearch}">${p}</a>
		        	</li>
		        </c:forEach>
		        
		        <li>
			        <c:if test="${cur_page < endpage_s}">
			        	<a href="${home_url}?page=${cur_page+1}&itemsearch=${param.itemsearch}">Next&gt;&gt;</a>
			        </c:if>
		        </li>
		    </ul>
		</div>
	</div>
</div>



