<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#board { padding-top: 20px; padding-bottom: 16px; }
#board .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#board .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board .left-side-bar ul li:last-child { border: 0px; }
#board .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board .right-article-content .title { padding: 8px; }
#board .right-article-content .title h1 { margin: 0px; }
#board .right-article-content .title h1 small { margin-left: 16px; }
#board .right-article-content .content { padding: 0px 8px 16px; }
#board .right-article-content .content .header { color: #777; margin-bottom: 8px; }
#board .right-article-content .content .header span:first-child { margin-right: 8px; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="board" class="container">

	<!-- board content -->
	<div class="right-article-content">
	
		<div class="title">
			<h1>${board.title}<small>${board.type}</small></h1>
		</div>
		
		<div class="line-horizontal" style="border: 1px solid #222; border-radius: 1px;"></div>
		
		<div class="content">
			<div class="header">
				<span>
					<span class="glyphicon glyphicon-calendar"></span>
					<fmt:formatDate value="${board.regdate}" pattern="yyyy년 MM월 dd일"/> &nbsp;
				</span>
				<span>
					<span class="glyphicon glyphicon-eye-open"></span>
					${board.cnt} &nbsp;
				</span>
			</div>
			<div class="body">
				${board.content}
			</div>
		</div>
		
		<a class="btn btn-default pull-left" href="javascript: location.href='enter.do';">목록으로</a>
		<c:if test="${fromAdmin}">
			<a class="btn btn-default pull-right" href="javascript: deleteBoard(${board.id});">글 삭제</a>
			<a class="btn btn-default pull-right" href="${cp}/admin/board/updateViewBoard.do?id=${board.id}">글 수정</a>
		</c:if>
		
	</div>
	
</div>

<script type="text/javascript">
function deleteBoard(id) {
	console.log(id);
	if (!confirm('이 게시글을 삭제하시겠습니까?')) {
		return;
	}
	
	$.ajax({
		url: 'delete.ajax',
		method: 'POST',
		data: { 'id': id }
	}).done(function(data) {
		alert(data.status ? '성공적으로 처리되었습니다.' : '처리 중 오류가 발생했습니다.');
		location.href = 'enter.do';
	}).fail(function(error) {
		alert(error);
	});
}
</script>