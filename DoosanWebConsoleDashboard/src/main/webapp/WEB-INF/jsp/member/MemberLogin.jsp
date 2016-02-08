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
    
      <title>슈뢰딩거의 고양이 - 로그인</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
	</head>
	<body>
		<div id="login-page">
			<div class="container">
				<form class="form-login" action="<c:url value='/securityLogin.do'/>">
					<h2 class="form-login-heading">슈뢰딩거의 고양이</h2>
					<div class="login-wrap">
						<input type="text" class="form-control" id="member_id" name="member_id" placeholder="USER ID" style="display:inline-block;" autofocus>
		            	<br>
		            	<input type="password" class="form-control" id="member_password" name="member_password" placeholder="Password">
		            	<label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> 비밀번호를 잊어버렸을 땐?</a>
		
		                </span>
		            	</label>
		            	<button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i>&nbsp;로그인</button>
		            	<hr>
		            	<div class="registration">
		            		아직 계정이 없으신가요?<br/>
		            	    <a class="" href="<c:url value='/PageLink.do?link=member/MemberJoin'/>">
							새 계정 만들기
		                </a>
		            	</div>
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