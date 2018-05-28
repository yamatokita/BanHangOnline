<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<hr class="soften">
<div class="well well-small">
<h1>Liên hệ </h1>
<hr class="soften"/>	
<div class="row-fluid">
    <div class="span8 relative">
    <iframe style="width:100%; height:350px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
    src="https://maps.google.com/maps?q=10 pho quang&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>

    <div class="absoluteBlk">
    <div class="well wellsmall">
    <h4>Thông tin liên hệ</h4>
    <h5 style="width:400px">
        Waseco Building, 10 Pho Quang Str.<br/>
        Tan Binh Dist., HCM City, VietNam<br/><br/>
         
        info@mysite.com<br/>
        ﻿Tel (84-8)384-77-000<br/>
        Fax (84-8)384-75-000<br/>
        web:http://www.fujinet.net
    </h5>
    </div>
    </div>
    </div>
    
   <div class="span4">
    <h4>Góp ý với chúng tôi </h4>
    <form:form class="form-horizontal" name="formContact" action="${home_url}?tabName=contact" method="post" modelAttribute="contact">
    <fieldset>
        <div class="control-group">
       
            <input type="text" placeholder="Tên hiển thị" class="input-xlarge" name="username"  id="username"   />

            <!-- <div *ngIf="username.invalid && (username.dirty || username.touched)"
                class="form-danger">
                <div *ngIf="username.errors.required">
                    Tên hiển thị chưa được nhập.
                </div>
            </div> -->
        </div>

       <div class="control-group">
       
        <input type="text" placeholder="Email" class="input-xlarge"  name="email" id="email" />

        <!-- <div *ngIf="email.invalid && (email.dirty || email.touched)"
              class="form-danger">
            <div *ngIf="email.errors.required">
                Email chưa được nhập.
            </div>
        </div> -->
       
      </div>
      <div class="control-group">
       
          <input type="text" placeholder="Chủ đề" class="input-xlarge" name="subject" id="subject" />

         <!--  <div *ngIf="subject.invalid && (subject.dirty || subject.touched)"
              class="form-danger">
            <div *ngIf="subject.errors.required">
            Nội dung chưa được nhập.
            </div>
          </div>
       -->
      </div>
     <div class="control-group">
        <textarea rows="3" class="input-xlarge" name="comment" id="comment" ></textarea>
     </div> 

        <input type="submit"  name="submitContact" id="submitContact" value="Gửi góp ý" class="exclusive shopBtn"/>

    </fieldset>
  	</form:form>
    </div>
    <script src="/resources/js/jquery-3.1.1.min.js"></script>
	<script src="/resources/js/form-validation.js"></script>
</div>