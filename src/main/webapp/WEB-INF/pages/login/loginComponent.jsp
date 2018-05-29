<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<ul class="nav pull-right">

	<c:if test="${!usertrue }">
		<li class="">
			<a href="${home_url}?tabName=register" class="">
			<span class="icon-edit"></span> Đăng ký </a>
		</li>
	</c:if>
	<!--Sign In-->
	<c:if test="${!usertrue }">
	<li class="dropdown">
		<a data-toggle="dropdown" class="dropdown-toggle" href="#">
			<span class="icon-lock" id="login"></span> Đăng nhập
			<b class="caret"></b>
		</a>
		<div class="dropdown-menu">
			<form class="form-horizontal loginFrm" #f="ngForm" (ngSubmit)="CheckLogin(f.value) " id="formLogin">
				<div class="control-group">
					<input type="text" class="span2" id="inputUsername" name="username" placeholder="Tên đăng nhập" [(ngModel)]="username">
				</div>
				<div class="control-group">
					<input type="password" class="span2" id="inputPassword" name="password" placeholder="Mật khẩu" [(ngModel)]="password">
				</div>
				<div class="control-group">
					<label class="checkbox">
						<input type="checkbox"> Nhớ mật khẩu
					</label>
					<p>
						<button type="submit" class="shopBtn btn-block">
							<span id="model_loggin">Đăng nhập</span>
						</button>
					</p>
				</div>
			</form>
		</div>
	</li>
	</c:if>>
	
	<!--Sign Out-->
		<li *ngIf="usertrue" class="dropdown">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<span class="icon-lock" id="login"></span> ${username}
				<b class="caret"></b>
			</a>
			<ul class="dropdown-menu">
				<li style="text-align: left;"><a>Đăng nhập bởi <strong> <i>${username}</i></strong></a></li>
				<li class="divider"></li>
				<li style="text-align: left;"><a (click)="SystemError()"> Thông tin của bạn</a></li>
				<li style="text-align: left;"><a routerLink="cart">Giỏ hàng của bạn</a></li>
				<li class="divider"></li>
				<li style="text-align: left;"><a (click)="SystemError()">Hỗ trợ</a></li>
				<li style="text-align: left;"><a (click)="SystemError()">Cài đặt</a></li>
				<li style="text-align: left;"><a href="">Đăng xuất</a></li>
			</ul>
		</li>
</ul>
