$(document).ready(function(){
	$("#alertSuccess").hide();
	$("#errusername").hide();
	$("#erremail").hide();
	$("#errsubject").hide();  //Initially hiding the error spans
	$("#errcomment").hide();

	$("#submitContact").click(function() {
		var username=$("#username").val();
		var email=$("#email").val();
		var subject=$("#subject").val(); //triggers on click of register
		var comment=$("#comment").val();
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var letters = /^[A-Za-z]+$/;

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