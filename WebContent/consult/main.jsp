<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Share</title>
	<link rel="stylesheet" href="css/menu.css">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	
	<link rel="stylesheet" href="css/lightbox.css">
</head>
<body>
	<div id="page-content" class="index-page">
		<div id="container">
			<!-- These are our grid blocks -->
			<s:action name="listInformation" namespace="/" executeResult="true"></s:action>
		</div>
	</div>
    <script type="text/javascript" src="js/jquery-2.1.1.js" ></script>
	

    <script type="text/javascript" src="js/jquery.pinto.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
	
	<!-- Light Box -->
	<script src="js/lightbox-plus-jquery.min.js"></script>
	
	<!-- Menu -->
	<script src="js/script.js"></script>
	
	<script type="text/javascript">
		$('#container').pinto();
	</script>
</body>
</html>