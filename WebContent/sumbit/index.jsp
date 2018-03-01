<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>论坛</title>

<link href="/Z/sumbit/css/bootstrap.min.css" rel="stylesheet">
<!-- ===========================
    FAVICONS
    =========================== -->

<!-- ===========================
    STYLESHEETS
    =========================== -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/Z/sumbit/css/style.css">
<link rel="stylesheet" href="/Z/sumbit/css/responsive.css">

<!-- ===========================
    FONTS & ICONS
    =========================== -->
<link
	href='http://fonts.googleapis.com/css?family=Kristi|Alegreya+Sans:300'
	rel='stylesheet' type='text/css'>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="/Z/sumbit/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/Z/sumbit/css/default.css">
<link href="/Z/sumbit/css/fileinput.css" media="all" rel="stylesheet"
	type="text/css" />

<script
	src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
<!--[if IE]>
        <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body style="background: url(img/bk.jpg); border-radius: 6px;">
	<div class="header" style="font-weight: normal;">
		<div
			style="z-index: 999; text-align: center; width: 100%; height: 50px; background: #fff; box-shadow: 0px 1px 10px #aaa; position: fixed; top: 0; left: 0;">
			<center>
				<table style="height: 50px;">
					<tr style="margin-top: 10px;">
						<th><a href='/Z/sumbit/showIndexDocument.action'><span
								style="font-size: 20px; color: #000;">主页</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</th>
						<th><a href='#'><span
								style="font-size: 20px; color: #000;">查看Demo</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</th>
						<th><form action="/Z/searchPage.action" method="post">
								<input type="text" placeholder="搜索从这里开始..." required="required"
									maxlength="20" name="key" id="key"
									style="width: 300px; padding-left: 20px; padding-right: 20px; text-align: center; height: 30px; border-radius: 20px; border: 1px solid #333;">
								<input type="submit" value="GO" class="go"
									style="width: 40px; height: 30px; border-radius: 20px; padding: 0; text-align: center; background: #fff; border: 1px solid #333;">
							</form></th>
					</tr>
				</table>
			</center>
		</div>
	</div>
	<div class="container" style="border-radius: 10px; margin-top: 90px;">
		<!-- ===========================
        HEADER
        ============================ -->
		<div id="header" class="row">
			<!-- <div class="col-sm-2">
				<img class="propic" src="img/sun.png" alt="">
			</div> -->
			<!-- photo end-->

			<!-- header right end-->
		</div>
		<!-- header end-->

		<hr class="firsthr">

		<!-- ===========================
        BODY LEFT PART
        ============================ -->
		<div class="col-md-8 mainleft" style="width:100%;">
			<!--personal statement end-->

			<div id="education" class="row mobmid" style="width:100%;">
				<div class="col-sm-1">
					<span class="secicon fa fa-magic"></span>
				</div>
				<!--icon end-->

				<div class="col-sm-11" style="width:100%;">
					<h3>
						<b>Cloud</b>&nbsp;&nbsp;&nbsp;<b><a
							href="showDocument.action"
							style="text-align: center; padding: 6px 13px 6px 13px; background: #0053a8; color: #fff; border-radius: 10px;">查看更多</a></b>
					</h3>
					<%-- <c:forEach items="${pageBean.recordList }" var="list"> --%>
					<%-- <%User[] user = session.get();
					for(int i = 0;i < 3;i++){
						
%>						 --%><div class="row rowele"
							style="width:100%;margin-bottom: 10px; border: 1px solid #0053a8; border-radius: 10px;">
							<div class="col-md-9">
								<p class="sub">
									关键词:<a href="/Z/searchPage.action?key=${list.type }">${list.type }</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="showDocumentDetails.action?name=${list.document }&type=${list.type }&time=${list.time }&jion=${list.jion }">查看详情</a>
								</p>
							</div>
							<div class="year col-md-3">
								<p>${list.time }</p>
							</div>
						</div>
						<!--Education & Certification 1 end-->
<%-- <%} %> --%>
					<%-- </c:forEach> --%>
				</div>
			</div>
			<!--Education & Certifications end-->
			<hr>
		</div>
		<!--left end-->

		<!-- ===========================
        SIDEBAR
        =========================== -->
		<!--container end-->
		</script>
		<script src="/Z/sumbit/js/jquery.min.js"></script>
		<script src="/Z/sumbit/js/fileinput.js" type="text/javascript"></script>
		<script src="/Z/sumbit/js/fileinput_locale_zh.js"
			type="text/javascript"></script>
		<script src="/Z/sumbit/js/bootstrap.min.js" type="text/javascript"></script>
		<script>
			/*
			$(".file").on('fileselect', function(event, n, l) {
			    alert('File Selected. Name: ' + l + ', Num: ' + n);
			});
			 */
		</script>
</body>

</html>