<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    
      <title>슈뢰딩거의 고양이 - 회원 가입</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    
    <script type="text/javascript">
    	function moveFocus(num, here, next){
    		var str = here.value.length;
    		if(str == num){
    			next.focus();
    		}
    	}
    	
    	function validate(){
    		var Frm = document.Frm;
    		var id = document.getElementById('member_id');
    		var password1 = document.getElementById('member_password');
    		var password2 = document.getElementById('member_password_check');
    		var name = document.getElementById('member_name');
    		var sex = document.getElementById('member_sex');
    		var birth_year = document.getElementById('birth_year');
    		var birth_month = document.getElementById('birth_month');
    		var birth_day = document.getElementById('birth_day');
    		var email = document.getElementById('member_email');
    		var phone_first = document.getElementById('phone_first');
    		var phone_second = document.getElementById('phone_second');
    		var phone_third = document.getElementById('phone_third');
    		
    		if(id.value == ""){
    			alert("아이디를 입력해주세요");
    			id.focus();
    			return false;
    		}
    		
    		if(id.value.length < 4 || id.value.length > 12){
    			alert("아이디는 4~12자 이내로 입력 가능합니다");
    			id.select();
    			return false;
    		}
    		
    		for(var i=0; i<id.value.length;i++){
    			var ch = id.value.charAt(i);
    			
    			if(( ch < "a" || ch > "z") && (ch < "A" || ch > "Z") && (ch < "0" || ch > "9" )){
    				alert("아이디는 영문과 숫자로만 입력 가능합니다");
                    id.select();
                    return false;
    			}
    			
    		}
    		
    		if(!isNaN(id.value.substr(0,1))){
    			alert("아이디는 숫자로 시작할 수 없습니다");
    			id.select();
    			return false;
    		}
    		
    		if(!checkPassword(password1)){
    			return false;
    		}
    		
    	}
    	
    	function checkPassword(pwd){
    		var num = pwd.value.search(/[0-9]/g);
    		var eng = pwd.value.search(/[a-z]/ig);
    		
    		if(pwd.value.length < 8 || pwd.value.length > 20){
    			alert("비밀번호는 8~20자리 이내로 입력해주세요");
    			return false;
    		}
    	}
    	
    	
    </script>
	</head>
	<body>
		<div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" name="Frm" id="Frm" action="test.html" onsubmit="return validate();">
		        <h2 class="form-login-heading">회원 가입</h2>
		        <div class="login-wrap">
		            <input type="text" class="form-control" id="member_id" name="member_id" placeholder="아이디를 입력해 주세요" autofocus>
		            <br>
		            <input type="password" class="form-control" id="member_password" name="member_password" placeholder="비밀번호를 입력해 주세요">
		            <br>
		            <input type="password" class="form-control" id="member_password_check" name="member_password_check" placeholder="비밀번호를 한번 더 입력해 주세요">
		            <br>
		            <input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해 주세요">
		            <br>
						<div class="btn-group btn-group-justified">
						  <div class="btn-group">
						    <input type="button" id="member_sex" name="member_sex" class="btn btn-primary" value="남자">
						  </div>
						  <div class="btn-group">
						    <input type="button" id="member_sex" name="member_sex" class="btn btn-danger" value="여자">
						  </div>
						</div> 
					<br>
					<input type="text" class="form-control" size="4" MaxLength="4" id="birth_year" name="birth_year" placeholder="년(4자)" style="width:70px; display:inline-block; margin-bottom:10px;">
					<select class="form-control" id="birth_month" name="birth_month" style="width:70px; display:inline-block; margin-bottom:10px; margin-top:5px;">
						  <option selected>월</option>
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						  <option value="6">6</option>
						  <option value="7">7</option>
						  <option value="8">8</option>
						  <option value="9">9</option>
						  <option value="10">10</option>
						  <option value="11">11</option>
						  <option value="12">12</option>
					</select>
					<input type="text" class="form-control" id="birth_day" size="2" MaxLength="2" name="birth_day" placeholder="일" style="width:70px; display:inline-block; margin-bottom:10px;">
					<br>
					<input type="text" class="form-control" id="member_email" name="member_email" placeholder="비상연락용 이메일">
					<br>
					<h5>휴대전화번호</h5>
					<input type="text" class="form-control" size="3" id="phone_first" name="phone_first" MaxLength="3" onKeyUp="moveFocus(3,this,this.form.phone_second);" style="width:70px; display:inline-block; margin-bottom:10px;">&nbsp;-&nbsp;
					<input type="text" class="form-control" size="4" id="phone_second" name="phone_second" MaxLength="4" onKeyUp="moveFocus(4,this,this.form.phone_third);" style="width:70px; display:inline-block; margin-bottom:10px;" >&nbsp;-&nbsp;
					<input type="text" class="form-control" size="4" id="phone_third" name="phone_third" style="width:70px; display:inline-block; margin-bottom:10px;">
					<br>
					<button class="btn btn-theme btn-block" type="submit">가입하기</button>
		
		        </div>
		      </form>	  	
	  	
	  	</div>
	  </div>
	
	
	
	
	
		<script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
	</body>
</html>