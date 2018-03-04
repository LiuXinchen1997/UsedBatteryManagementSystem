<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

	<s:iterator value="list">
		<div class="portfolio_item">
		<div class="winner_tag">${dates}</div>
		<h3>${title}</h3>
		<h6>${userName}</h6>
		<br/>
		<p>${content}</p>
		</div>		
	</s:iterator>

	