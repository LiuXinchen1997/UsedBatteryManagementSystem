<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<div id=__bianjituijian/danpin>
<div id="container">
	<s:iterator value="list">
			<div class="item">
				<a class="example-image-link" href="single_news.jsp?&title=${title }&src=${picUrl}&time=${dates}&content=${content}" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="${picUrl}" alt=""/></a>
				<div class="content-item">
					<a href="single_news.jsp?&title=${title }&src=${picUrl}&time=${dates}&content=${content}" ><h3 class="title-item" style="font-size:20px;"><a href="single_news.jsp?&title=${title }&src=${picUrl}&time=${dates}&content=${content}">${title}</a></h3>
					<div class="time">${dates}</div>
					<p class="info">${content}</p></a>
					
				</div>
				<div class="bottom-item">
					<a href="#" class="btn btn-share share"><i class="fa fa-share-alt"></i>分享</a>
					<a href="#" class="btn btn-like"><i class="fa fa-heart-o"></i></a>
					<a href="#" class="btn btn-comment"><i class="fa fa-comment-o"></i></a>
					<a href="single_news.jsp?&title=${title }&src=${picUrl}&time=${dates}&content=${content}" class="btn btn-more"><i class="fa fa-long-arrow-right "></i></a>
				</div>
			</div>
	</s:iterator>
</div>
</div>
