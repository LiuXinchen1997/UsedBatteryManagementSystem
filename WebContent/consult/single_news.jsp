<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>详情</title>
	
	<!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/menu.css" rel="stylesheet">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	
	<link rel="stylesheet" href="css/lightbox.css">
	
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div id="page-content" class="sub-page">
		<div class="container">
			<center><article>
				<a class="example-image-link" href="<%=request.getParameter("src") %>" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="<%=request.getParameter("src") %>" alt=""/></a>
				<div class="content-item">
					<h3 class="title-item"><a href="#"><%=request.getParameter("title") %></a></h3>
					<div class="time"><%=request.getParameter("time") %></div>
					<p class="info"><%=request.getParameter("content") %></p>
					
				</div>
				<div class="bottom-item">
					<a href="#" class="btn btn-share share"><i class="fa fa-share-alt"></i> Share</a>
				</div>
			</article></center>
		</div>
	</div>
	
    <!-- Once the page is loaded, initialized the plugin. -->
    <script type="text/javascript" src="js/jquery-2.1.1.js" ></script>
	<script src="js/bootstrap.min.js"></script>

    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
	
	<script src="js/lightbox-plus-jquery.min.js"></script>
	
	<!-- Menu -->
	<script src="js/script.js"></script>
</body>
</html>