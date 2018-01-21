<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>保险信息管理</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="style/images/title_arrow.gif" /> 装置信息列表
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>
	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="adminSelectDevice">
			<input type="text" name="keyword" title="">
			<input type="submit" value="查询">
		</form>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>装置编号</td>
					<td>剩余硬币数量</td>
					<td>已占用体积</td>
					<td>捐赠金额</td>
					
					<td>操作</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				<s:iterator value="list">
					<tr align="center">
						<td height="25" align="center">${id}</td>
						<td>${remainCoinNum}</td>
						<td>${occupiedVolume}</td>
						<td>${donationNumber}</td>

						<td><a href="adminUpdateDevice.action?id=${id}" class="FunctionButton">更新</a>
							<a href="adminDeleteDevice.action?id=${id}" class="FunctionButton" onClick="return confirm('您确定要删除吗？')">删除</a></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="insertDevice.jsp">添加</a>
			</div>
		</div>
	</div>
</body>
</html>