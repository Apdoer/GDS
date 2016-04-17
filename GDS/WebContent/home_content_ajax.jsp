<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<div class="row">
	<div class="col-xs-4">
		<h2><a href="${cp}/board/enter.do" style="color: black; text-decoration: none;">공지사항</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="${cp}/board/enter.do" style="color: black; text-decoration: none; font-size: 14px;">더보기></a></h2>
		</h2>
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
	<div class="col-xs-4">
		<h2><a href="${cp}/blog/selectBlogAll.do" style="color: black; text-decoration: none;">별헤는밤</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="${cp}/blog/selectBlogAll.do" style="color: black; text-decoration: none; font-size: 14px;">더보기></a></h2>
		
		<hr class="hr_margin_top_0">
		<table>
		<c:forEach items="${blogList}" var="blog">
			<tr>
				<c:choose>
				<c:when test="${not empty blog.content}">
				<td style="padding-top: 0px; padding-bottom: 0px; vertical-align: middle;">
					<a href="${cp}/blog/selectBlog.do?id=${blog.id}" class="thumbnail" style="margin-bottom: 0px;">
						${blog.content}
					</a>
				</td>
				<td style=" vertical-align: middle;">
					<h4><a href="${cp}/blog/selectBlog.do?id=${blog.id}"
							style="color: black; text-decoration: none;">
						    ${blog.title}
					</a></h4>
					<p><fmt:formatDate value="${blog.regdate}" pattern="yyyy년 MM월 dd일" /></p>
				</td>
				</c:when>
				<c:otherwise>
					<td colspan="2" style=" vertical-align: middle;">
						<h4><a href="${cp}/blog/selectBlog.do?id=${blog.id}"
								style="color: black; text-decoration: none;">
								${blog.title}
						</a></h4>
						<p><fmt:formatDate value="${blog.regdate}" pattern="yyyy년 MM월 dd일" /></p>
					</td>						
				</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
		</table>
	</div>
	<div class="col-xs-4">
		<h2>
			<img src="${cp}/image/icon_2.png">&nbsp;찾아오시는 길
		</h2>
		<hr class="hr_margin_top_0">
		<div>
			<img src="${cp}/image/map_1.png" style="width: 100%;">
		</div>
	</div>
</div>
