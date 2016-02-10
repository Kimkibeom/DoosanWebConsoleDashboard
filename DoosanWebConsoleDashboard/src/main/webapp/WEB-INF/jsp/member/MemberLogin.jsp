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
    <script src="customJS/LoginValidation.js"></script>
	</head>
	<body>
		<div id="login-page">
			<div class="container">
				<form class="form-login"> <%-- action="<c:url value='/securityLogin.do'/>" --%>
					<h2 class="form-login-heading">슈뢰딩거의 고양이</h2>
					<div class="login-wrap">
						<input type="text" class="form-control" id="member_id" name="member_id" placeholder="USER ID" style="display:inline-block;" autofocus>
		            	<br>
		            	<input type="password" class="form-control" id="member_password" name="member_password" placeholder="Password">
		            	<label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="#myModal"> 비밀번호를 잊어버렸을 땐?</a>
		
		                </span>
		            	</label>
		            	<button class="btn btn-theme btn-block" id="security_login" type="button"><i class="fa fa-lock"></i>&nbsp;로그인</button>
		            	<hr>
		            	<div class="registration">
		            		아직 계정이 없으신가요?<br/>
		            	    <a class="" href="<c:url value='/PageLink.do?link=member/MemberJoin'/>">
							새 계정 만들기
		                </a>
		            	</div>
					</div>
				</form>
				<div class="modal fade" id="login_success_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h4 class="modal-title" id="myModalLabel">로그인</h4>
						      </div>
						      <div class="modal-body">
									오늘 처음으로 로그인 하셨습니다<br>첫 로그인 기념으로 100냥포인트를 드립니다
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="goHome();" >홈으로</button>
						      </div>
						    </div>
						  </div>
				</div>
				<div class="modal fade" id="login_failed_Modal" tabindex="-1" role="dialog" aria-labelledby="modal_label" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h4 class="modal-title" id="modal_label">로그인 실패</h4>
						      </div>
						      <div class="modal-body">
									로그인에 실패했습니다<br>아이디와 비밀번호를 확인해 주세요
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
				</div>
			</div>
		</div>
		
		<script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
    	$(function(){
    		$('#security_login').click(function(){
    			var member_id = $('#member_id').val();
    			var member_password = $('#member_password').val();
    			
    			$.ajax({
    				type:'POST',
    				data:{
    					member_id:member_id,
    					member_password:member_password
    				},
    				dataType: 'json',
    				url:'<c:url value='/securityLogin.do'/>',
    				success:function(returnData, textStatus, xhr){
    					if(returnData.returnMsg == 'SUCCESS'){
    						$('#login_success_Modal').modal({
    							 toggle:"modal",
    							 backdrop:"static",
    							 keyboard: false
    						});
    					}
    					else{
    						$('#login_failed_Modal').modal({
    							toggle:"modal",
   							 	backdrop:"static",
    						});
    					}
    					
    				},
    				error: function(xhr, status, e){
    					alert(e);
    				}
				})
    		});
    		
    		$('#member_password').keydown(function(key){
    			if(key.keyCode == 13){
    				var member_id = $('#member_id').val();
        			var member_password = $('#member_password').val();
        			
        			$.ajax({
        				type:'POST',
        				data:{
        					member_id:member_id,
        					member_password:member_password
        				},
        				dataType: 'json',
        				url:'<c:url value='/securityLogin.do'/>',
        				success:function(returnData, textStatus, xhr){
        					if(returnData.returnMsg == 'SUCCESS'){
        						$('#login_success_Modal').modal({
        							 toggle:"modal",
        							 backdrop:"static",
        							 keyboard: false
        						});
        					}
        					else{
        						$('#login_failed_Modal').modal({
        							toggle:"modal",
       							 	backdrop:"static",
        						});
        					}
        					
        				},
        				error: function(xhr, status, e){
        					alert(e);
        				}
    				})
    			}
    		});
    	})
    
    
    
    
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
	</body>
</html>