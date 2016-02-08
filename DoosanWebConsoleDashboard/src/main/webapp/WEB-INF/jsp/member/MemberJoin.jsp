<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    <script src="customJS/LoginValidation.js"></script>
	</head>
	<body>
		<div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" name="Frm" id="Frm" action="<c:url value='/insertMember.do'/>" method="post" onsubmit="return validate();">
		        <h2 class="form-login-heading">회원 가입</h2>
		        <div class="login-wrap">
		            <input type="text" class="form-control" id="member_id" name="member_id" placeholder="아이디를 입력해 주세요" style="width:64%; display:inline-block;" autofocus>
		            <button type="button" class="btn btn-theme" id="check_id" name="check_id">ID 중복 확인</button>
		            <br>
		            	<div class="alert alert-warning" id="id_blank" style="display:none;"><b>ID 중복 확인</b> 아이디를 입력해 주세요</div>
		            	<div class="alert alert-warning" id="already_has_id" style="display:none;"><b>ID 중복 확인</b> 이미 존재하는 아이디입니다</div>
		            	<div class="alert alert-success" id="id_ok" style="display:none;"><b>ID 중복 확인</b> 등록 가능한 아이디입니다</div>
		            <br>
		            <input type="password" class="form-control" id="member_password" name="member_password" placeholder="비밀번호를 입력해 주세요">
		            <br>
		            <input type="password" class="form-control" id="member_password_check" name="member_password_check" placeholder="비밀번호를 한번 더 입력해 주세요">
		            <br>
		            <input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해 주세요">
		            <br>
						<div class="radio" style="width:100px; display:inline-block; margin-top:0px;">
						  <label>
						    <input type="radio" name="member_sex" value="남자" checked>남자
						  </label>
						</div>
						<div class="radio" style="width:100px; display:inline-block; margin-top:0px;">
						  <label>
						    <input type="radio" name="member_sex" value="여자">여자
						  </label>
						</div>
					<br>
					<input type="text" class="form-control" size="4" MaxLength="4" id="birth_year" name="birth_year" placeholder="년(4자)" onkeydown="return onlyNumber(event);" onkeyup="removeChar(event)" style="width:70px; display:inline-block; margin-bottom:10px; ime-mode:disabled;">
					<select class="form-control" id="birth_month" name="birth_month" style="width:70px; display:inline-block; margin-bottom:10px; margin-top:5px;">
						  <option value="1" selected>1</option>
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
					</select>&nbsp;월&nbsp;
					<input type="text" class="form-control" id="birth_day" size="2" MaxLength="2" name="birth_day" placeholder="일" onkeydown="return onlyNumber(event);" onkeyup="removeChar(event)" style="width:70px; display:inline-block; margin-bottom:10px; ime-mode:disabled;">&nbsp;일&nbsp;
					<br>
					<input type="text" class="form-control" id="member_email" name="member_email" placeholder="비상연락용 이메일">
					<br>
					<h5>휴대전화번호</h5>
					<input type="text" class="form-control" size="3" id="phone_first" name="phone_first" MaxLength="3" onkeydown="return onlyNumber(event);" onKeyUp="moveFocus(3,this,this.form.phone_second);" style="width:70px; display:inline-block; margin-bottom:10px; ime-mode:disabled;">&nbsp;-&nbsp;
					<input type="text" class="form-control" size="4" id="phone_second" name="phone_second" MaxLength="4" onkeydown="return onlyNumber(event);" onKeyUp="moveFocus(4,this,this.form.phone_third);" style="width:70px; display:inline-block; margin-bottom:10px; ime-mode:disabled;" >&nbsp;-&nbsp;
					<input type="text" class="form-control" size="4" id="phone_third" name="phone_third" MaxLength="4" onkeydown="return onlyNumber(event);" onkeyup="removeChar(event)" style="width:70px; display:inline-block; margin-bottom:10px;">
					<br>
					<button class="btn btn-theme btn-block" id="member_join" type="submit">가입하기</button>
		
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
    /**
	 * 아이디 중복 확인
	 */
	$(function(){
		$('#check_id').click(function(){
			var msgCd = $('#member_id').val();
			
			if(msgCd == ""){
				$('#id_blank').fadeIn(300).delay(2000).fadeOut(400);
				$('#member_id').focus();
				return;
			}
			
			$.ajax({
				type: 'POST',
				data: "msgCd="+msgCd,
				dataType: 'json',
				url: '/controller/id_validation.do',
				success: function(returnData, textStatus, xhr){
					if(returnData == null){
						$('#id_ok').fadeIn(300).delay(2000).fadeOut(400);
						$('#check_id').attr('class','btn btn-success');
					}else{
						$('#already_has_id').fadeIn(300).delay(2000).fadeOut(400);
					}
				},
				
				error: function(xhr, status, e){
					alert(e);
				}
			});
			
		});
	});
    
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
	</body>
</html>