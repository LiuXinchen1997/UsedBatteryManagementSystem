<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 包含公共的JSP代码片段 -->
	
<title>装置地图</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=NOOpbuLQpe1je4kZwB8mnH0ki81XUw3m">
</script>
<style type="text/css">
        body, html
        {
            width: 100%;
            height:90%;
            overflow:hidden;
            background-color:#fff;
            font-family:"微软雅黑";
            color:#101010;
        }

        #map
        {
            width: 100%;
            height:100%;
        }
</style>
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
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/>  装置地图显示			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="map">
</div>
</body>


<script type="text/javascript">
    var map = new BMap.Map("map");
    var opts = { type: BMAP_NAVIGATION_CONTROL_SMALL }
    map.addControl(new BMap.NavigationControl(opts));
    map.centerAndZoom(new BMap.Point(117.209828, 31.776006), 18);

    var marker = new BMap.Marker(new BMap.Point(117.2098, 31.776006));
    map.addOverlay(marker);

    var opts = {
        width: 250,     // 信息窗口宽度
        height: 100,     // 信息窗口高度
        title: "单片机装置信息"  // 信息窗口标题   
    }
    var infoWindow = new BMap.InfoWindow("编号：0001<br/>剩余硬币数：50<br/>已占用体积：0<br/>获得捐款数：0", opts);  // 创建信息窗口对象    
    marker.addEventListener("click", function () {
        map.openInfoWindow(infoWindow, new BMap.Point(117.209828, 31.776006));      // 打开信息窗口
    });

    function func() {
        var m = new BMap.Marker(new BMap.Point(117.222, 31.777777));
        map.addOverlay(m);
        alert('succeed!');
    }
    var myDis = new BMapLib.DistanceTool(map);
</script>


</html>