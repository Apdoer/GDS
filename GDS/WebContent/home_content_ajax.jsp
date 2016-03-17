<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<div class="row">
	<div class="col-md-6">
		<h2>공지사항</h2>
		<hr class="hr_margin_top_0">
		<table class="table">
			<c:forEach items="${boardList}" var="board">
				<tr>
					<c:choose>
						<c:when test="${not empty board.thumbnail}">
							<td style="padding-top: 0px; padding-bottom: 0px; vertical-align: middle;">
								<a href="${cp}/board/get.do?id=${board.id}" class="thumbnail" style="margin-bottom: 0px;">
									<img alt="" src="${board.thumbnail}" style="max-width: 80px; max-height: 80px;">
								</a>
							</td>
							<td style=" vertical-align: middle;">
								<h4><a href="${cp}/board/get.do?id=${board.id}"
										style="color: black; text-decoration: none;">
										<strong>[${board.type}]</strong> ${board.title}
								</a></h4>
								<p><fmt:formatDate value="${board.regdate}" pattern="yyyy년 MM월 dd일" /></p>
							</td>
						</c:when>
						<c:otherwise>
							<td colspan="2" style=" vertical-align: middle;">
								<h4><a href="${cp}/board/get.do?id=${board.id}"
										style="color: black; text-decoration: none;">
										<strong>[${board.type}]</strong> ${board.title}
								</a></h4>
								<p><fmt:formatDate value="${board.regdate}" pattern="yyyy년 MM월 dd일" /></p>
							</td>						
						</c:otherwise>
					</c:choose>
					
					
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="col-md-6">
		<h2>별헤는밤</h2>
		<hr class="hr_margin_top_0">
		<table>
			<tr>
				<td style="text-align: center;">${blogList[0].content}</td>
			</tr>
			<tr>
				<td style="text-align: left; padding-left: 5%"><h4>${blogList[0].title}</h4></td>
			</tr>
		</table>
	</div>
</div>
