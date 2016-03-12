<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#board { padding-top: 60px; }
#board .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#board .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board .left-side-bar ul li:last-child { border: 0px; }
#board .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board .right-article-list { border-left: 1px solid #eee; padding-bottom: 16px; }
#board .right-article-list .articles { font-size: 0.9em; }
#board .right-article-list .articles table { margin-bottom: 0px; }
#board .right-article-list .articles table th { text-align: center; }
#board .right-article-list .articles table th,
#board .right-article-list .articles table td { padding: 12px 16px; cursor: pointer; }
#board .right-article-list .articles table th:nth-child(1) { width: 10%; }
#board .right-article-list .articles table th:nth-child(2) { width: 10%; }
#board .right-article-list .articles table th:nth-child(4) { width: 20%; }
#board .right-article-list .articles table th:nth-child(5) { width: 10%; }
#board .right-article-list .articles table tr > td { vertical-align: middle; text-align: center; }
#board .right-article-list .articles table tr > td:nth-child(3) { padding-left: 32px; text-align: left; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="board" <c:if test="${sessionScope.auth == null}">class="container"</c:if>>

	<div class="row">
		
		<!-- board left-side-bar -->
		<div class="col-md-2 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="${cp}/board/enter.do" style="font-weight: bold;">공지사항</a></li>
				<li><a href="${cp}/qna/enter.do">온라인 문의</a></li>
				<%-- <li><a href="${cp}/counsel.do">상담신청</a></li> --%>
			</ul>
		
		</div>
		
		<!-- board content -->
		<div class="col-md-9 right-article-list">
		
			<div class="articles">
				<!-- load board list by ajax -->
			</div>
			
			<c:if test="${sessionScope.auth != null}">
				<a class="btn btn-default pull-right" href="${cp}/admin/board/form.do">글쓰기</a>
			</c:if>
		
		</div>
		
	</div>
	
<script type="text/javascript">
function getBoard(id) {
	location.href = "${cp}/board/get.do?id=" + id; 	
}

function listBoard(pageIdx) {
	$.ajax({
		url: '${cp}/board/list.ajax',
		data: { 'currentPage': pageIdx }
	}).done(function(data) {
		$('div.articles').html(data);
	}).fail(function(error) {
		alert(error);
	});
}

$(function() {
	listBoard(1);
});
</script>	
	
</div>