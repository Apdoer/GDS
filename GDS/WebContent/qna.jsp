<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#qna .left-side-bar ul li { border-bottom: 1px solid #eee; }
#qna .left-side-bar ul li:last-child { border: 0px; }
#qna .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#qna .right-article-list { padding-top: 16px; }
#qna .right-article-list .articles { font-size: 0.9em; }
#qna .right-article-list .articles table { margin-bottom: 0px; }
#qna .right-article-list .articles table th { text-align: center; }
#qna .right-article-list .articles table th,
#qna .right-article-list .articles table td { padding: 12px 16px; cursor: pointer; }
#qna .right-article-list .articles table th:nth-child(1) { width: 10%; }
#qna .right-article-list .articles table th:nth-child(3) { width: 10%; }
#qna .right-article-list .articles table th:nth-child(4) { width: 20%; }
#qna .right-article-list .articles table tr > td { vertical-align: middle; text-align: center; }
#qna .right-article-list .articles table tr > td:nth-child(2) { padding-left: 32px; text-align: left; }
#qna .right-article-list .articles table tr > td span.badge { margin-right: 4px; font-weight: normal; }
#qna .right-article-list .articles table tr > td span.badge.is-answered { background-color: green; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="qna" class="container">

	<!-- board content -->
	<h2 class="h2">온라인 문의</h2>
	
	<div class="right-article-list">
	
		<div class="articles">
			<!-- load qna list by ajax -->
		</div>
		
		<c:if test="${not fromAdmin}">
			<div class="buttons">
				<a href="${cp}/qna/form.do" class="btn btn-default">글쓰기</a>
			</div>
		</c:if>
		
	</div>

</div>

<script type="text/javascript">
function getQna(id) {
	location.href = "get.do?id=" + id; 	
}

function listQna(pageIdx) {
	$.ajax({
		url: '${cp}/qna/list.ajax',
		data: { 'currentPage': pageIdx }
	}).done(function(data) {
		console.log('hayo!');
		$('div.articles').html(data);
	}).fail(function(error) {
		alert(error);
	});
}

$(function() {
	listQna(1);
});
</script>