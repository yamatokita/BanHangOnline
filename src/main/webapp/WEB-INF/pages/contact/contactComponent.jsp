<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
    
   <!--  <div class="span4">
    <h4>Góp ý với chúng tôi </h4>
    <form class="form-horizontal" name="form" (ngSubmit)="contactForm.form.valid && addContact()" #contactForm="ngForm" novalidate>
    <fieldset>
        <div class="control-group">
       
            <input type="text" placeholder="Tên hiển thị" class="input-xlarge"
            required
            [(ngModel)]="model.username" name="username"
            #username="ngModel"/>

            <div *ngIf="username.invalid && (username.dirty || username.touched)"
                class="form-danger">
                <div *ngIf="username.errors.required">
                    Tên hiển thị chưa được nhập.
                </div>
            </div>
        </div>

       <div class="control-group">
       
        <input type="text" placeholder="Email" class="input-xlarge"
          required
          [(ngModel)]="model.email" name="email"
          #email="ngModel"/>

        <div *ngIf="email.invalid && (email.dirty || email.touched)"
              class="form-danger">
            <div *ngIf="email.errors.required">
                Email chưa được nhập.
            </div>
        </div>
       
      </div>
       <div class="control-group">
       
          <input type="text" placeholder="Nội dung góp ý" class="input-xlarge"
          required
          [(ngModel)]="model.subject" name="subject"
          #subject="ngModel"/>

          <div *ngIf="subject.invalid && (subject.dirty || subject.touched)"
              class="form-danger">
            <div *ngIf="subject.errors.required">
            Nội dung chưa được nhập.
            </div>
          </div>
      
      </div>
      <div class="control-group">
        <textarea rows="3" id="textarea" class="input-xlarge"
          [(ngModel)]="model.comment" name="comment"
          #comment="ngModel">
        </textarea>
      </div>

        <input type="submit"  name="submitContact" value="Gửi góp ý" class="exclusive shopBtn">

    </fieldset>
  </form>
    </div> -->
</div>