<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- Registration -->
<div class="row">
    <%@ include file="../body/sidebarComponent.jsp" %>
    <div class="span9">
        <div class="well">
            <h3> Đăng ký</h3>
            <hr class="soft" />
            <form:form class="form-horizontal" name="formUser" action="${home_url}/saveUser" method="post" modelAttribute="user">
                <div class="control-group">
                    <label class="control-label" >Tên hiển thị <sup>*</sup></label>
                    <div class="controls">
                        <input type="text" name="username" placeholder="Tên hiển thị"  id="username_rgt"/>
                        
                        <!-- <div *ngIf="username.invalid && (username.dirty || username.touched)" class="form-danger">
                            <div *ngIf="username.errors.required">
                                Tên chưa được nhập.
                            </div>
                        </div> -->
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">Email <sup>*</sup></label>
                    <div class="controls">
                        <input type="text" placeholder="Email"  name="email" id="email_rgt"  />

                        <!-- <div *ngIf="email.invalid && (email.dirty || email.touched)" class="form-danger">
                            <div *ngIf="email.errors.required">
                                Email chưa được nhập.
                            </div>
                        </div> -->

                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Mật khẩu <sup>*</sup></label>
                    <div class="controls">
                        <input type="password" placeholder="Mật khẩu"  name="password"  id="password_rgt"/>

                        <!-- <div *ngIf="password.invalid && (password.dirty || password.touched)" class="form-danger">

                            <div *ngIf="password.errors.required">
                                Mật khẩu chưa được nhập.
                            </div>
                            <div *ngIf="password.errors.minlength">
                                Mật khẩu dưới 4 ký tự.
                            </div>
                        </div> -->

                    </div>
                </div>

                <div class="control-group">
                    <div>
                        <div class="controls span2">
                            <!--<input type="submit" name="submitAccount" value="Đăng ký" class="exclusive shopBtn">-->
                            <button type="submit" name="submitRegister" id="submitRegister"value="Đăng ký" class="btn btn-warning">Đăng ký</button>
                        </div>
                        <div class="controls">
                            <button type="button" class="btn btn-primary" href="${home_url}">Hủy bỏ</button>
                        </div>
                    </div>

                </div>
            </form:form>
            <script src="/resources/js/jquery-3.1.1.min.js"></script>
			<script src="/resources/js/form-validation.js"></script>
        </div>
    </div>
    
</div>

<!-- <app-login></app-login> -->
<router-outlet></router-outlet>