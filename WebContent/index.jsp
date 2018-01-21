<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.littleleaf.ubmsystem.domain.Admin"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎来到小树叶~</title>
<link rel="shortcut icon" type="image/x-icon"
	href="indexres/css/images/favicon.ico" />
<link rel="stylesheet" href="indexres/css/style.css" type="text/css"
	media="all" />
<!--link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	
	<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="js/modernizr.custom.js"></script>
	<![endif]-->
<script src="indexres/js/jquery.flexslider-min.js"
	type="text/javascript"></script>
<script src="indexres/js/functions.js" type="text/javascript"></script>
</head>
<%
	if (session.getAttribute("user") instanceof Admin) {
		session.removeAttribute("user");
	}
%>
<body>
	<!-- wrapper -->
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">

				<!-- header -->
				<header class="header">

				<h1 id="logo">
					<a href="#"></a>
				</h1>

				<nav id="navigation">
				<ul>
					<li><a href="#">关于我们</a></li>
					<li><a href="#">资料分享</a></li>
					<li><a href="./plus.html">论坛专区</a></li>
					
					<%
						if (session.getAttribute("user") != null) {
					%>
					<li><a href="#">我想说的话</a></li>
					<li><a href="./credit.html">兑换积分</a></li>
					<li><a href="message.jsp">个人设置</a></li>
					<li><a href="UserExit.action">注销/退出</a></li>
					<%
						} else {
					%>
					<li><a href="login.jsp">登录/注册</a></li>
					<%
						}
					%>
					
				</ul>
				</nav>


				<div class="cl">&nbsp;</div>
				</header>
				<!-- end of header -->
				<div class="main">
					<!-- slider -->
					<div class="flexslider">
						<ul class="slides">
							<li><img src="indexres/css/images/1.jpg" alt="" />
								<div class="slide-cnt">
									<h2>
										 欢迎来到小树叶~<br />
									</h2>
									<p></p>
								</div> <a href="#" class="slider-btn"><span>Order Now</span></a></li>



						</ul>
					</div>
					<!-- end of slider -->
					<!-- cols -->
					<section class="cols">
					<div class="col">
						<img src="indexres/css/images/2.jpg" alt="" />
					</div>

					<div class="col">
						<img src="indexres/css/images/3.jpg" alt="" />
					</div>

					<div class="col">
						<img src="indexres/css/images/10.jpg" alt="" />
					</div>

					<div class="col">
						<img src="indexres/css/images/5.jpg" alt="" />
					</div>
					<div class="cl">&nbsp;</div>
					</section>
					<!-- end of cols  -->


					<!-- end of container -->
					<div class="footer">
						<nav class="footer-nav">
						<ul>
							<li><a href="#">关于我们</a></li>
							<li><a href="#">资料分享</a></li>
							<li><a href="#">论坛专区</a></li>
							
							<%
								if (session.getAttribute("user") != null) {
							%>
							<li><a href="#">我想说的话</a></li>
							<li><a href="#">兑换积分</a></li>
							<li><a href="message.jsp">个人设置</a></li>
							<li><a href="UserExit.action">注销/退出</a></li>
							<%
								} else {
							%>
							<li><a href="login.jsp">登录/注册</a></li>
							<%
								}
							%>
							
						</ul>
						</nav>
						<p class="copy">Copyright &copy; 2017 All Rights Reserved.</p>
					</div>
				</div>
				<!-- end of shell -->
			</div>
			<!-- end of wrappert -->
</body>
</html>