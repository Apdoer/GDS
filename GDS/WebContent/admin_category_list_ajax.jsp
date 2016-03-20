<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="list-group">
	<c:forEach items="${categoryList}" var="category">
		<li id="${category.id}" class="list-group-item">
			<div class="name">${category.name}</div>
			<c:if test="${category.seq eq 1}">
				<span class="glyphicon glyphicon-remove pull-right" onclick="javascript: deleteCategory(${category.id})"></span>
			</c:if>
		</li>
	</c:forEach>
</ul>
