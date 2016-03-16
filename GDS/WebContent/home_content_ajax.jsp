<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="row">
	<div class="col-md-6">
		<h2>공지사항</h2>
		<hr class="hr_margin_top_0">
		<table class="table">
			<c:forEach items="${boardList}" var="board">
				<tr>
					<td><h4>
						<a href="${cp}/board/get.do?id=${board.id}"
							style="color: black; text-decoration: none;">
							${board.title}</a>
					</h4></td>
					<td><h5>
						<fmt:formatDate value="${board.regdate}" pattern="yy-MM-dd" />
					</h5></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="col-md-6">
		<h2>별헤는밤</h2>
		<hr class="hr_margin_top_0">
		<table>
			<tr>
				<td style="text-align: center">${blogList[0].content}</td>
			</tr>
			<tr>
				<td style="text-align: center"><h4>${blogList[0].title}</h4></td>
			</tr>
		</table>
	</div>
</div>
