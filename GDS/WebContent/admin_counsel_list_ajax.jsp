<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<input type="text" name="currentPage" value="${searchVO.currentPage}" hidden="true">
<table class="table">
	<tr>
		<th colspan="3">상담신청 현황</th>
	</tr>
	<c:choose>
		<c:when test="${searchVO.result != null && searchVO.result.size() > 0}">
			<c:forEach items="${searchVO.result}" var="counsel">
				<tr style="cursor: pointer;" onclick="javascript: getCounsel(${counsel.id});">
					<td style=" padding-left: 16px;">
						<p class="category-name">${counsel.categoryName}</p>
						<p class="detail">${counsel.detail}</p>
					</td>
					<td><c:if test="${counsel.doneyn == 'y'}">
						<span class="badge doneyn">Done</span>
					</c:if></td>
					<td>${counsel.regdate}</td>
				</tr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="5" style="padding: 16px 0px; text-align: center;">
					등록된 상담신청내역이 존재하지 않습니다.
				</td>
			</tr>
		</c:otherwise>
	</c:choose>
</table>

<div class="paginator">
	<ul class="pagination">
		<c:if test="${searchVO.startPageIndex > 1}">
			<li><a href="javascript: listCounsel(${searchVO.startPageIndex - 1});">
				<span aria-hidden="true">&laquo;</span>
			</a></li>	
		</c:if>
		<c:forEach begin="${searchVO.startPageIndex}" end="${searchVO.endPageIndex}" var="idx">
			<c:if test="${searchVO.currentPage == idx}">
				<li><a href="javascript: listCounsel(${idx});" style="font-size: 2em; font-weight: bold;">${idx}</a></li>
			</c:if>
			<c:if test="${searchVO.currentPage != idx}">
				<li><a href="javascript: listCounsel(${idx});">${idx}</a></li>
			</c:if>
		</c:forEach>
		<c:if test="${searchVO.endPageIndex < searchVO.lastPageIndex}">
			<li><a href="javascript: listCounsel(${searchVO.endPageIndex + 1});">
				<span aria-hidden="true">&raquo;</span>
			</a></li>	
		</c:if>
	</ul>
</div>
