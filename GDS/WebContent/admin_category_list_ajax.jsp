<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="list-group">
	<c:forEach items="${categoryList}" var="category">
		<li id="${category.id}" class="list-group-item">
			<div class="name">${category.name}</div>
			<span class="glyphicon glyphicon-remove pull-right" onclick="javascript: deleteCategory(${category.id})"></span>
			<span class="glyphicon glyphicon-chevron-down pull-right" onclick="javascript: alert('작업중입니다.')"></span>
			<span class="glyphicon glyphicon-chevron-up pull-right" onclick="javascript: alert('작업중입니다.')"></span>		
		</li>
	</c:forEach>
</ul>
