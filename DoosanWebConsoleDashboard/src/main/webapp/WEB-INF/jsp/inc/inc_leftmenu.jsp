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

    <title>Doosan WebConsole Dashboard</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
	</head>
	<body>
	<div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="assets/img/doosan_logo.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">비회원입니다.<br>로그인을 해주세요.</h5>
              	  	
                  <li class="mt">
                      <a class="active" href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Home</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>선수단</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">코칭스탭</a></li>
                          <li><a  href="buttons.html">투수</a></li>
                          <li><a  href="panels.html">포수</a></li>
                          <li><a  href="#">내야수</a></li>
                          <li><a  href="#">외야수</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>경기일정</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>순위&nbsp;&amp;&nbsp;기록</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="lock_screen.html">팀 순위</a></li>
                          <li><a  href="blank.html">TOP5</a></li>
                          <li><a  href="login.html">기록실</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>슈뢰딩거의 고양이</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>슈뢰딩거의 고양이 순위</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>두산베어스 커뮤니티 링크</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="morris.html">디시인사이드 두산베어스 갤러리</a></li>
                          <li><a  href="chartjs.html">네이버 공식까페</a></li>
                          <li><a  href="chartjs.html">곰들의 대화</a></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
	
	
	<script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	</body>
</html>