<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<input type="text" name="currentPage" value="${searchVO.currentPage}" hidden="true">
<div class="blog-header">
	<h1 class="blog-title">
		별헤는 밤
		<c:if test="${sessionScope.auth != null}">
			<c:if test="${searchVO.result.size() == 1}">
				<a href="${cp}/blog/updateViewBlog.do?id=${blogList[0].id}" class="btn btn-info pull-right">글 수정</a>
				<a href="${cp}/blog/deleteBlog.do?id=${blogList[0].id}" class="btn btn-info pull-right">글 삭제</a>
			</c:if>
			<a href="${cp}/admin/blog/edit.do" class="btn btn-info pull-right">글 쓰기</a>
		</c:if>
	</h1>
</div>
<c:forEach items="${searchVO.result}" var="blogList">
	<div class="col-md-9 blog-main">
		<div class="blog-post">
			<h2 class="blog-post-title">
				<a href="${cp}/admin/blog/selectBlog.do?id=${blogList.id}" style="color: black; text-decoration: none;">${blogList.title}</a>
			</h2>
			<p class="blog-post-meta"><fmt:formatDate value="${blogList.regdate}" pattern="yyyy년 MM월 dd일"/></p>
			<p class="blog-post-content">${blogList.content}</p>
		</div>
	</div>
</c:forEach>

<div class="paginator">
	<ul class="pagination">
		<c:if test="${searchVO.startPageIndex > 1}">
			<li><a href="javascript: listBoard(${searchVO.startPageIndex - 1});"> 
				<span aria-hidden="true">&laquo;</span>
			</a></li>
		</c:if>
		<c:forEach begin="${searchVO.startPageIndex}" end="${searchVO.endPageIndex}" var="idx">
			<c:if test="${searchVO.currentPage == idx}">
				<li><a href="javascript: listBoard(${idx});" style="font-size: 2em; font-weight: bold;">${idx}</a></li>
			</c:if>
			<c:if test="${searchVO.currentPage != idx}">
				<li><a href="javascript: listBoard(${idx});">${idx}</a></li>
			</c:if>
		</c:forEach>
		<c:if test="${searchVO.endPageIndex < searchVO.lastPageIndex}">
			<li><a href="javascript: listBoard(${searchVO.startPageIndex + 1});">
				<span aria-hidden="true">&raquo;</span>
			</a></li>
		</c:if>
	</ul>
</div>
