<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<input type="text" name="currentPage" value="${searchVO.currentPage}" hidden="true">
<table class="table">
	<tr>
		<th>글번호</th>
		<th>카테고리</th>
		<th>제목</th>
		<th>작성일시</th>
		<th>조회수</th>
	</tr>
	<c:choose>
		<c:when test="${searchVO.result != null && searchVO.result.size() > 0}">
			<c:forEach items="${searchVO.result}" var="board">
				<tr>
					<td>${board.id + 1}</td>
					<td>${board.type}</td>
					<td>${board.title}</td>
					<td><fmt:formatDate value="${board.regdate}" pattern="yyyy년 MM월 dd일"/>
					</td>
					<td>${board.cnt}</td>
				</tr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="5" style="padding: 32px;">
					작성된 글이 없습니다.
				</td>
			</tr>
		</c:otherwise>
	</c:choose>
</table>

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
