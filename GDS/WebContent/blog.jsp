<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#board .left-side-bar ul { list-style: none; width: 75%; }
#board .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board .left-side-bar ul li:last-child { border: 0px; }
#board .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board .right-article-list { padding-top: 16px; padding-bottom: 16px; }
#board .right-article-list .articles { font-size: 0.9em; }
#board .right-article-list .articles table { margin-bottom: 0px; }
#board .right-article-list .articles table th { text-align: center; }
#board .right-article-list .articles table th,
#board .right-article-list .articles table td { padding: 12px 16px; cursor: pointer; }
#board .right-article-list .articles table th:nth-child(1) { width: 10%; }
#board .right-article-list .articles table th:nth-child(3) { width: 20%; }
#board .right-article-list .articles table th:nth-child(4) { width: 10%; }
#board .right-article-list .articles table tr > td { vertical-align: middle; text-align: center; }
#board .right-article-list .articles table tr > td:nth-child(2) { padding-left: 32px; text-align: left; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="board" class="container">

	<!-- board content -->
	<h2 class="h2">별헤는 밤</h2>
	
	<div class="right-article-list">
	
		<div class="articles">
			<!-- load board list by ajax -->
		</div>
		
		<c:if test="${fromAdmin}">
			<a class="btn btn-default pull-right" href="${cp}/admin/board/form.do">글쓰기</a>
		</c:if>
	
	</div>

</div>
	
<script type="text/javascript">
function getBlog(id) {
	location.href = "selectBlog.do?id=" + id; 	
}

function listBoard(pageIdx) {
	$.ajax({
		url: '${cp}/blog/list.ajax',
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