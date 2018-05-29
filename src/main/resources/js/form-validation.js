$(document).ready(function(){
	$("#alertSuccess").hide();
	$("#errusername").hide();
	$("#erremail").hide();
	$("#errsubject").hide();  //Initially hiding the error spans
	$("#errcomment").hide();
	$("#errpassword").hide(); 

	$("#submitContact").click(function() {
		var username=$("#username").val();
		var email=$("#email").val();
		var subject=$("#subject").val(); //triggers on click of register
		var comment=$("#comment").val();
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var letters = /^\w[A-Za-z]+$/;

		 if(username=="" || username==null){
			alert("Tên hiển thị chưa được nhập");
			return false;
		}else if(email==null || email==""){
			alert("Email chưa được nhập");
			return false;
		}else if(subject=="" || subject==null){
			alert("Chủ đề chưa được nhập");
			return false;
			
		}else if(comment=="" || comment==null){
			
			alert("Nội dung chưa được nhập");
			return false;
		
		}else if(!(email.match(mailformat))){
			alert("Email không hợp lệ");
			return false;
			
		}else if(!(username.match(letters))){
			alert("Tên hiển thị chỉ nhập ký tự chữ");
			return false;
		}else{
			$("#alertSuccess").show();
			$("#formid").submit();
			return true;
		}
		
		});
	
		/*$("#submitRegister").click(function() {
			var username=$("#username_rgt").val();
			var email=$("#email_rgt").val();
			var password=$("#password_rgt").val(); //triggers on click of register
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var letters = /^\w[A-Za-z]+$/;
	
			 if(username=="" || username==null){
				alert("Tên hiển thị chưa được nhập");
				return false;
			}else if(email==null || email==""){
				alert("Email chưa được nhập");
				return false;
			}else if(password=="" || password==null){
				alert("Mật khẩu chưa được nhập");
				return false;
				
			}else if(password.length < 4){
				alert("Mật khẩu dưới 4 ký tự");
				return false;
				
			}else if(!(email.match(mailformat))){
				alert("Email không hợp lệ");
				return false;
				
			}else if(!(username.match(letters))){
				alert("Tên hiển thị chỉ nhập ký tự chữ");
				return false;
			}else{
				$("#alertSuccess").show();
				$("#formid").submit();
				return true;
			}
		
			});*/

	
	/*$("#id").change(function(){
		var userid=$("#id").val();   //here we are restricting the user at the time of typing,we called an event "Keyup"
		 if(isNaN(userid)){
				
				$("#errid").show();  //if user enters other than number then the error span will be shown
				return false;
			}else{
				$("#errid").hide();


			return true;
			}
		
		
	});*/
	
	$("#username").change(function(){
		var username=$("#username").val();
		 var letters = /^[A-Za-z]+$/;

		 if(!(username.match(letters))){
			 $("#errusername").show();
			 $(this).focus(); 
			 return false;
			 
			}else{
				$("#errusername").hide();
				return true;
			}
		
	});
	$("#email").change(function(){
		var email=$("#email").val();

		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(!(email.match(mailformat))){
			 $("#erremail").show();
			 $(this).focus(); 
			 return false;
		
		}else{
			 $("#erremail").hide();
			 return true;	
		}
		
	});
	
	/*$("#cpassword").change(function(){
		var password=$("#password").val();
		var cpassword=$("#cpassword").val();
		if(!(password==cpassword)){
			 $("#errpass").show();
			return false;	
			
		}else{
			 $("#errpass").hide();

			return true;
		}		
	});	*/
});


/*$(document).ready(function(){
	$("#alertSuccess").hide();
	$("#errusername").hide();
	$("#erremail").hide();
	$("#errpassword").hide();  //Initially hiding the error spans

	$("#submitRegister").click(function() {
		var username=$("#username").val();
		var email=$("#email").val();
		var password=$("#password").val(); //triggers on click of register
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var letters = /^\w[A-Za-z]+$/;

		 if(username=="" || username==null){
			alert("Tên hiển thị chưa được nhập");
			return false;
		}else if(email==null || email==""){
			alert("Email chưa được nhập");
			return false;
		}else if(password=="" || password==null){
			alert("Mật khẩu chưa được nhập");
			return false;
			
		}else if(password.length < 4){
			alert("Mật khẩu dưới 4 ký tự");
			return false;
			
		}else if(!(email.match(mailformat))){
			alert("Email không hợp lệ");
			return false;
			
		}else if(!(username.match(letters))){
			alert("Tên hiển thị chỉ nhập ký tự chữ");
			return false;
		}else{
			$("#alertSuccess").show();
			$("#formid").submit();
			return true;
		}
		
		});

	
	$("#id").change(function(){
		var userid=$("#id").val();   //here we are restricting the user at the time of typing,we called an event "Keyup"
		 if(isNaN(userid)){
				
				$("#errid").show();  //if user enters other than number then the error span will be shown
				return false;
			}else{
				$("#errid").hide();


			return true;
			}
		
		
	});
	
	$("#username").change(function(){
		var username=$("#username").val();
		 var letters = /^\w[A-Za-z]+$/;

		 if(!(username.match(letters))){
			 $("#errusername").show();
			 $(this).focus(); 
			 return false;
			 
			}else{
				$("#errusername").hide();
				return true;
			}
		
	});
	$("#email").change(function(){
		var email=$("#email").val();

		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(!(email.match(mailformat))){
			 $("#erremail").show();
			 $(this).focus(); 
			 return false;
		}else{
			 $("#erremail").hide();
			 return true;	
		}
		
	});
	
	$('#password').on('blur', function(){
		
		var password=$("#password").val();
	    if(password.length < 8){ // checks the password value length
	    	$("#errpassword").show();
	    	$(this).focus(); // focuses the current field.
	    	return false; // stops the execution.
	    }else{
			$("#errpassword").hide();
			return true;	
		}
	});
	
	$("#cpassword").change(function(){
		var password=$("#password").val();
		var cpassword=$("#cpassword").val();
		if(!(password==cpassword)){
			 $("#errpass").show();
			return false;	
			
		}else{
			 $("#errpass").hide();

			return true;
		}		
	});	
});*/