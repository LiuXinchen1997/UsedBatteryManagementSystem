<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>环保论坛</title>


<link href="style/default.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="style/print.css" rel="stylesheet" type="text/css"
	media="print" />
<link href="http://fonts.googleapis.com/css?family=Oswald"
	rel="stylesheet" type="text/css" />


<script src="js/jQuery.min.js" type="text/javascript"></script>
<script src="js/functions.js" type="text/javascript"></script>
<script src="contact-form/contact-form.js" type="text/javascript"></script>

<!-- Image Gallery -->
<script type="text/javascript"
	src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript"
	src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css"
	href="fancybox/jquery.fancybox-1.3.4.css" media="screen" />

<!-- Popup Contact Form -->
<script src="js/popup.js" type="text/javascript"></script>


<!-- Style Swticher -->
<script type="text/javascript" src="js/styleswitch.js"></script>
<link rel="stylesheet" type="text/css" href="style/big.css" title="big"
	media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/blue.css"
	title="blue" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/blue2.css"
	title="blue2" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/br.css"
	title="br" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/brown.css"
	title="brown" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/bs.css"
	title="bs" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/cgrey.css"
	title="cgrey" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/dark.css"
	title="dark" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/orange.css"
	title="orange" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/purple.css"
	title="purple" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/white.css"
	title="white" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/yellow.css"
	title="yellow" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="style/mini.css"
	title="mini" media="screen" />


<style type="text/css">
/* Style Sheet Switcher */
.onpage-style-switcher {
	width: 40px;
	position: absolute;
	margin-top: 170px;
	padding-top: 10px;
	padding-bottom: 10px;
	background-color: #fff;
}

.onpage-style-switcher li {
	padding: 0px;
	margin: 1px 0px 0px 0px;
}

.onpage-style-switcher li a {
	color: #fff;
	text-shadow: none;
}

.onpage-style-switcher li a div:hover {
	padding-right: 20px;
}
</style>

<link href="style/popup.css" rel="stylesheet" type="text/css"
	media="screen" />

</head>
<body>



	<ul class="onpage-style-switcher">
		<li><a href="style/style=white" rel="white" class="styleswitch"><div
					style="background-color: #5FB053; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=big" rel="big" class="styleswitch"><div
					style="background-color: #1f3862; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=yellow" rel="yellow" class="styleswitch"><div
					style="background-color: #fdff01; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=br" rel="br" class="styleswitch"><div
					style="background-color: #9a1b1f; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=bs" rel="bs" class="styleswitch"><div
					style="background-color: #eb374b; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=brown" rel="brown" class="styleswitch"><div
					style="background-color: #2f2913; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=mini" rel="mini" class="styleswitch"><div
					style="background-color: #dedede; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=cgrey" rel="cgrey" class="styleswitch"><div
					style="background-color: #3c3d3f; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=orange" rel="orange" class="styleswitch"><div
					style="background-color: #bd492a; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=dark" rel="dark" class="styleswitch"><div
					style="background-color: #111111; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=blue2" rel="blue2" class="styleswitch"><div
					style="background-color: #359ccf; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=purple" rel="purple" class="styleswitch"><div
					style="background-color: #d34699; height: 25px; width: 30px;"></div></a></li>
		<li><a href="style/style=blue" rel="blue" class="styleswitch"><div
					style="background-color: #90d3d9; height: 25px; width: 30px;"></div></a></li>
	</ul>


	<div id="mydiv" class="success" style="display: none;">Thank you
		for contacting me!</div>

	<div style="clear: both;"></div>

	<!--header start-->
	<header class="header">
	<div class="headerwrapper">
		<h1>JOHN DOE</h1>

		<div class="clearfix"></div>

		<h2>INTERACTION DESIGNER+SEO</h2>
	</div>


	</header>
	<!--header end-->

	<!--wrapper start-->
	<div id="wrapper">

		<!--contents start-->
		<section id="contents"> <!--main start-->
		<div id="main">

			<!--section start-->
			<div class="section">

				<h5>Work Experience</h5>

				<!--work_item start-->
				<div class="work_item">

					<div class="year">2007 - 2009</div>
					<h3>Faculty Member (Multimedia)</h3>

					<h6>college name</h6>

					<br />

					<p>Vivamus eu nibh et felis interdum venenatis, sed vestibulum
						euismod luctus. Ut viverra leo id enim convallis non faucibus elit
						ullamcorper. Suspendisse condimentum scelerisque gravida.</p>

				</div>
				<!--portfolio_item end-->


			</div>
			<!--section end-->

			<div class="copyrights">
				Collect from <a href="http://www.cssmoban.com/" title="模板之家">模板之家</a>
			</div>
			<div class="clearfix"></div>
			<br />
			<!--section start-->
			<div class="section">

				<h5>Portfolio</h5>
				
				<s:action name="listComment" namespace="/" executeResult="true"></s:action>

			</div>
			<!--section end-->
		</div>
		<!--main end--> <!--sidebar start--> <aside id="sidebar"> <!--section start-->
		<div class="section">

			<h5>Contact Information</h5>


			<!--Contact_Info_items start-->
			<div class="contact_Info_items">

				<ul>

					<li class="web_icon"><a href="#">www.john-doe.com</a></li>

					<li class="msg_icon"><a href="#">hello@john-doe.com</a></li>

					<li class="twitter_icon"><a href="#">twitter</a></li>

					<li class="skype_icon"><a href="#">skype name</a></li>

					<li class="locate_icon"><a href="#topPanel">locate me</a></li>

					<li class="pdf_icon"><a href="#">download resume</a></li>

				</ul>

			</div>
			<!--Contact_Info_items end-->

		</div>
		<!--section end-->



		<div class="clearfix"></div>


		<!--section start-->
		<div class="section"></div>
		<!--section end-->



		<div class="clearfix"></div>


		<!--section start-->
		<div class="section"></div>
		<!--languages end-->


		<div class="clearfix"></div>


		<!--section start-->
		<div class="section"></div>
		<!--section end-->


		<div class="clearfix"></div>



		<!--section start-->
		<div class="section"></div>
		<!--section end-->

		<div class="clearfix"></div>
		<!--section start-->
		<div class="section" id="selected-works"></div>
		<!--section end--> </aside> <!--sidebar end-->

		<div style="clear: both;"></div>

		</section>
		<!--contents end-->

	</div>
	<!--wrapper end-->


	<script src="js/jquery.prettyPhoto.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript" charset="utf-8">
 
$(document).ready(function(){
 $("a[rel=gallery]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
				}
			});
 

			
			
			$('#bandar').css('display','none');
			var sentParts = window.location.href.toString().split('?');
			if(sentParts.length > 1)
			if(sentParts[1] ='sent'){
			$('#mydiv').css('display','');
			        setTimeout(function() {
					    $('#mydiv').fadeOut('fast');
					}, 3000);
			}
			});
			</script>
	<script type="text/javascript" src="js/twitter.js"></script>




	<!-- Contact Form Start -->

	<div id="popupContact">
		<a id="popupContactClose"><img src="images/x.gif" alt="Close" /></a>
		<h2>Lets Meet!</h2>
		<p id="contactArea">
		<div id="contact-form">

			<form name="contact" action="<?=$_SERVER['PHP_SELF']?>" method="post"
				onSubmit="return validateForm();">
				<table cellpadding="8" cellspacing="10">
					<tr>
						<td><label>Your Name <span class="req">*</span></label></td>

					</tr>
					<tr>
						<td><input type="text" id="sender_name" name="sender_name" /></td>
					</tr>

					<tr>
						<td><label>Your E-Mail <span class="req">*</span></label></td>
					</tr>

					<tr>
						<td><input type="text" id="sender_email" name="sender_email" /></td>
					</tr>

					<tr>
						<td><label>Message </label></td>
					</tr>

					<tr>
						<td><textarea id="sender_message" name="sender_message"
								cols="" rows="" style="width: 380px; height: 80px;"></textarea></td>
					</tr>

					<tr>
						<td><input type="submit" name="submitForm" value="Submit"
							class="button m grey-gloss" /> <span id="bandar"><img
								src="images/loader.gif" alt="Progress indicator..." /></span></td>
					</tr>

					<tr>
						<td colspan="4">
							<p id="form_errors"></p>
							<p id="form_thanks"></p>
						</td>
					</tr>
				</table>
			</form>

		</div>


		</p>
	</div>
	<div id="backgroundPopup"></div>
	<!-- Contact Form End -->



</body>
</html>