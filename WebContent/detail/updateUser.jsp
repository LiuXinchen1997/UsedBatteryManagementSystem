<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 包含公共的JSP代码片段 -->

<title>更新保险</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>


	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">


				<img border="0" width="13" height="13"
					src="style/images/title_arrow.gif" /> 更新保险



			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>


	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<!-- 表单内容 -->
		<form action="adminUpdateUserSubmit" method="post">

			<!-- 本段标题（分段标题） -->
			<div class="ItemBlock_Title">
				<img width="4" height="7" border="0"
					src="style/images/item_point.gif"> 用户信息&nbsp;
			</div>
			<!-- 本段表单字段 -->
			<div class="ItemBlockBorder">
				<div class="ItemBlock">
					<div class="ItemBlock2">
						<table cellpadding="0" cellspacing="0" class="mainForm">

							<tr>
								<td width="80px">用户名</td>
								<td><input type="text" name="username" class="InputStyle"
									value="${username}" /> *
							</tr>
							<tr>
								<td width="80px">性别</td>
								<td><input type="radio" id="sexMale" name="sex" value="男" checked="checked">男 
									<input type="radio" id="sexFemale" name="sex" value="女">女 *</td>
							</tr>

							<tr>
								<td width="80px">联系电话</td>
								<td><input type="text" name="tel" class="InputStyle"
									value="${tel}" /> *
							</tr>

							<tr>
								<td width="80px">身份证</td>
								<td><input type="text" name="idnum" class="InputStyle"
									value="${idnum}" /> *
							</tr>

							<tr>
								<td width="80px">电子邮箱</td>
								<td><input type="text" name="email" class="InputStyle"
									value="${email}" /> *
							</tr>

						</table>
					</div>
				</div>
			</div>

			<!-- 表单操作 -->
			<div id="InputDetailBar">


				<input type="submit" value="修改" class="FunctionButtonInput">



				<a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
			</div>
		</form>

	</div>




</body>
</html>