<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna { padding-top: 60px; }
#qna .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#qna .left-side-bar ul li { border-bottom: 1px solid #eee; }
#qna .left-side-bar ul li:last-child { border: 0px; }
#qna .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#qna .right-article-list { border-left: 1px solid #eee; }
#qna .right-article-list .articles { font-size: 0.9em; margin-bottom: 32px; }
#qna .right-article-list .articles table { margin-bottom: 0px; }
#qna .right-article-list .articles table th { text-align: center; }
#qna .right-article-list .articles table th,
#qna .right-article-list .articles table td { padding: 12px 16px; cursor: pointer; }
#qna .right-article-list .articles table th:nth-child(1) { width: 10%; }
#qna .right-article-list .articles table th:nth-child(3) { width: 20%; }
#qna .right-article-list .articles table tr > td { vertical-align: middle; text-align: center; }
#qna .right-article-list .articles table tr > td:nth-child(2) { padding-left: 32px; text-align: left; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="qna">

	<div class="row">
		
		<!-- content left-side-bar -->
		<div class="col-md-2 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="${cp}/board/enter.do">공지사항</a></li>
				<li><a href="${cp}/qna/enter.do" style="font-weight: bold;">온라인 문의</a></li>
			</ul>
		
		</div>
		
		<!-- qna password check form -->
		<div class="col-md-9 right-article-check">
		
			<form class="form-password-check" action="${cp}/qna/get.do" method="post">
				<input type="hidden" id="id" name="id" value="${id}">
				<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
				<button class="btn btn-lg btn-primary btn-block" type="submit">확인</button>
				
				<c:if test="${message != null}">
					<div class="alert alert-danger" role="alert">${message}</div>
				</c:if>
			</form>
		
		</div>
		
	</div>
	
</div>