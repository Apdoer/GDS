<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna img.dummy { margin-bottom: 16px; width: 100%; height: 320px; }

#qna .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#qna .left-side-bar ul li { border-bottom: 1px solid #eee; }
#qna .left-side-bar ul li:last-child { border: 0px; }
#qna .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#qna .right-article-list { border-left: 1px solid #eee; }
#qna .right-article-list .articles { font-size: 0.9em; margin-bottom: 32px; }
#qna .right-article-list .articles table { margin-bottom: 0px; }
#qna .right-article-list .articles table th { text-align: center; }
#qna .right-article-list .articles table th,
#qna .right-article-list .articles table td { padding: 12px 16px; cursor: pointer; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="qna">

	<img class="dummy" alt="" src="${cp}/img/dummy.jpg">
	
	<div class="row">
		
		<!-- board left-side-bar -->
		<div class="col-md-2 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="${cp}/board/enter.do">공지사항</a></li>
				<li><a href="${cp}/qna/enter.do" style="font-weight: bold;">온라인 문의</a></li>
				<%-- <li><a href="${cp}/counsel.do">상담신청</a></li> --%>
			</ul>
		
		</div>
		
		<!-- board content -->
		<div class="col-md-9 right-article-list">
		
			<div class="articles">
			
				<table class="table">
					<tr>
						<th style="width: 10%;">글번호</th>
						<th>제목</th>
						<th style="width: 20%;">작성일시</th>
						<th style="width: 10%;">조회수</th>
					</tr>
					<c:choose>
						<c:when test="${searchVO.result != null && searchVO.result.size() > 0}">
							<c:forEach items="${searchVO.result}" var="qna">
								<tr>
									<td style="vertical-align: middle; text-align: center; ">${qna.id}</td>
									<td style="vertical-align: middle; text-align: center;">${qna.type}</td>
									<td style="vertical-align: middle; padding-left: 8px;">${qna.title}</td>
									<td style="vertical-align: middle; text-align: center;">${qna.regdate}</td>
									<td style="vertical-align: middle; text-align: center;">${qna.cnt}</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4" style="padding: 32px 0px; text-align: center;">
									작성된 글이 없습니다.
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</table>
				
				<div class="paginator">
					<ul class="pagination">
						<c:if test="${searchVO.startPageIndex > 1}">
							<li><a href="${cp}/qna/list.do?currentPage=${searchVO.startPageIndex - 1}">
								<span aria-hidden="true">&laquo;</span>
							</a></li>	
						</c:if>
						<c:forEach begin="${searchVO.startPageIndex}" end="${searchVO.endPageIndex}" var="idx">
							<c:if test="${searchVO.currentPage == idx}">
								<li><a style="font-style: bold; font-size: 2em" href="${cp}/qna/list.do?currentPage=${idx}">${idx}</a></li>
							</c:if>
							<c:if test="${searchVO.currentPage != idx}">
								<li><a href="${cp}/qna/list.do?currentPage=${idx}">${idx}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${searchVO.endPageIndex < searchVO.lastPageIndex}">
							<li><a href="${cp}/qna/list.do?currentPage=${searchVO.endPageIndex + 1}">
								<span aria-hidden="true">&raquo;</span>
							</a></li>	
						</c:if>
					</ul>
				</div>
				
				<div class="buttons">
					<a href="${cp}/qna/form.do" class="btn btn-default">글쓰기</a>
				</div>
				
			</div>
		
		</div>
		
	</div>
	
</div>