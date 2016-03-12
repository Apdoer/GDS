<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna { padding-top: 60px; }
#qna form > * { margin-bottom: 8px; }
#qna form label { width: 100%; text-align: center; }
#qna form label span { color: #888; font-weight: normal; }
</style>

<div id="qna" class="container">

	<!-- qna password check form -->
	<div class="row">
	
			<form class="col-md-2 col-md-offset-5" action="${cp}/qna/get.do" method="post">
				<label for="password">
					이 게시글은 비밀글입니다. <br>
					<span>비밀번호를 입력해주세요.</span>
				</label>
				<input type="hidden" id="id" name="id" value="${id}">
				<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
				<button class="btn btn-primary btn-block" type="submit">확인</button>
				<c:if test="${message != null}">
					<div class="alert alert-danger" role="alert">${message}</div>
				</c:if>
			</form>
	
	</div>
	
</div>