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
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
       <c:import url="/PageLink.do?link=inc/inc_header" /> 
       <!-- <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <a href="index.html" class="logo"><b>두산베어스 관리콘솔</b></a>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.html">로그인</a></li>
                    <li><a class="logout" href="login.html">회원 가입</a></li>
            	</ul>
            </div>
        </header> -->
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <c:import url="/PageLink.do?link=inc/inc_leftmenu" />
           <!-- <div id="sidebar"  class="nav-collapse ">
              sidebar menu start
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
          </div> -->
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-9 main-chart">
                  
                  	<div class="row mtbox">
                  		<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
                  			<div class="box1">
					  			<span class="li_heart"></span>
					  			<h3>933</h3>
                  			</div>
					  			<p>933명의 사람들이 좋아요를 눌러주셨습니다</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_cloud"></span>
					  			<h3>48</h3>
                  			</div>
					  			<p>48명의 새로운 회원이 가입했습니다</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_stack"></span>
					  			<h3>0</h3>
                  			</div>
					  			<p>로그인한 회원만 볼 수 있는 서비스입니다.</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_news"></span>
					  			<h3>3</h3>
                  			</div>
					  			<p>3개의 새로운 두산베어스 소식이 있습니다.</p>
                  		</div>
                  		<div class="col-md-2 col-sm-2 box0">
                  			<div class="box1">
					  			<span class="li_data"></span>
					  			<h3>OK!</h3>
                  			</div>
					  			<p>현재 서버의 상태가 쾌적합니다</p>
                  		</div>
                  	
                  	</div><!-- /row mt -->	
                  
                      
                      <div class="row mt">
                      <!-- SERVER STATUS PANELS -->
                      	<!-- <div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn donut-chart">
                      			<div class="white-header">
						  			<h5>SERVER LOAD</h5>
                      			</div>
								<div class="row">
									<div class="col-sm-6 col-xs-6 goleft">
										<p><i class="fa fa-database"></i> 70%</p>
									</div>
	                      		</div>
								<canvas id="serverstatus01" height="120" width="120"></canvas>
								<script>
									var doughnutData = [
											{
												value: 70,
												color:"#68dff0"
											},
											{
												value : 30,
												color : "#fdfdfd"
											}
										];
										var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
								</script>
	                      	</div><! --/grey-panel -->
                      	<!-- </div>/col-md-4 -->  
                      	

                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn">
                      			<div class="white-header">
						  			<h5>3월의 Sale Product</h5>
								</div>
								<p><img src="assets/img/doosan_product.jpg"></p>
								<div class="row">
									<div class="col-md-6">
										<p><i class="fa fa-heart"></i>50% down</p>
									</div>
									<div class="col-md-6">
										<p>&#8361;&nbsp;140,000</p>
									</div>
								</div>
                      		</div>
                      	</div><!-- /col-md-4 -->
                      	
						<div class="col-md-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>3월 31일 MVP</h5>
								</div>
								<p><img src="assets/img/player/catcher/25_yangyijee.jpg"></p>
								<p><b>양의지</b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">기록</p>
										<p>4타수 3안타 1홈런</p>
									</div>
									<div class="col-md-6">
										<p class="small mt">득표 수</p>
										<p>1,300,000</p>
									</div>
								</div>
							</div>
						</div><!-- /col-md-4 -->
						
						<div class="col-md-4 col-sm-4 mb">
							<!-- REVENUE PANEL -->
							<div class="darkblue-panel pn">
								<div class="darkblue-header">
									<h5>홈 경기 관중 수 집계 그래프</h5>
								</div>
								<div class="chart mt">
									<div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
								</div>
								<p class="mt"><b>17,980</b><br/>3월 총 관중 수</p>
							</div>
						</div><!-- /col-md-4 -->
                      	

                    </div><!-- /row -->
					<div class="row mt">
                      <!--CUSTOM CHART START -->
                      <div class="border-head">
                          <h3>월별 방문자 수</h3>
                      </div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>10.000</span></li>
                              <li><span>8.000</span></li>
                              <li><span>6.000</span></li>
                              <li><span>4.000</span></li>
                              <li><span>2.000</span></li>
                              <li><span>0</span></li>
                          </ul>
                          <div class="bar">
                              <div class="title">JAN</div>
                              <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">FEB</div>
                              <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">MAR</div>
                              <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">APR</div>
                              <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
                          </div>
                          <div class="bar">
                              <div class="title">MAY</div>
                              <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">JUN</div>
                              <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
                          </div>
                          <div class="bar">
                              <div class="title">JUL</div>
                              <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
                          </div>
                      </div>
                      <!--custom chart end-->
					</div><!-- /row -->	
					
                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
                  
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                  	<%-- <c:import url="/PageLink.do?link=inc/inc_rightmenu" /> --%>
                    <!--COMPLETED ACTIONS DONUTS CHART-->
						 <h3>공지사항</h3>
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details2">
                      		<p><muted>2 Minutes Ago</muted><br/>
                      		   <a href="#">James Brown</a> subscribed to your newsletter.<br/>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details2">
                      		<p><muted>3 Hours Ago</muted><br/>
                      		   <a href="#">Diana Kennedy</a> purchased a year subscription.<br/>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details2">
                      		<p><muted>7 Hours Ago</muted><br/>
                      		   <a href="#">Brandon Page</a> purchased a year subscription.<br/>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details2">
                      		<p><muted>11 Hours Ago</muted><br/>
                      		   <a href="#">Mark Twain</a> commented your post.<br/>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details2">
                      		<p><muted>18 Hours Ago</muted><br/>
                      		   <a href="#">Daniel Pratt</a> purchased a wallet in your store.<br/>
                      		</p>
                      	</div>
                      </div>
						<h3>4월 1일 스타팅 라인업</h3>
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/pitcher/28_jangwonjun.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">장원준</a><br/>
                      		   <muted>선발투수</muted>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/catcher/25_yangyijee.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">양의지</a><br/>
                      		   <muted>포수</muted>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/infielder/36_ohjaeil.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">오재일</a><br/>
                      		   <muted>1루수</muted>
                      		</p>
                      	</div>
                      </div>
                      
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/infielder/24_ohjaewon.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">오재원</a><br/>
                      		   <muted>2루수</muted>
                      		</p>
                      	</div>
                      </div>
                     
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/infielder/13_huhgyungmin.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">허경민</a><br/>
                      		   <muted>3루수</muted>
                      		</p>
                      	</div>
                      </div>
                      
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/infielder/52_kimjaeho.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">김재호</a><br/>
                      		   <muted>유격수</muted>
                      		</p>
                      	</div>
                      </div>
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/outfielder/33_jungjinho.jpg" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">정진호</a><br/>
                      		   <muted>좌익수</muted>
                      		</p>
                      	</div>
                      </div>
                      
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/outfielder/31_jungsoobin.png" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">정수빈</a><br/>
                      		   <muted>중견수</muted>
                      		</p>
                      	</div>
                      </div>
                      
                      <div class="desc">
                      	<div class="thumb">
                      		<img src="assets/img/player/outfielder/49_minbyunghun.png" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">민병헌</a><br/>
                      		   <muted>우익수</muted>
                      		</p>
                      	</div>
                      </div>
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div>
                      
                  </div><!-- /col-lg-3 -->
              </div><!--/row -->
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="index.jsp" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
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
	
	<script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: '환영한다!',
            // (string | mandatory) the text inside the notification
            text: '고맙다 니 덕분에 방문자 수가 1이 늘었다. 두산베어스 관리콘솔과 대시보드를 관리하는 사이트다. 이 창은 꺼도 상관없다.<br /> 거슬리면 꺼라 ',
            // (string | optional) the image to display on the left
            image: 'assets/img/doosan_logo.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                /* ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                }, */
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>
