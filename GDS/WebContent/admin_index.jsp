<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GDS관리자</title>
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="${cp}/css/bootstrap.css">
<link rel="stylesheet" href="${cp}/css/bootstrap-theme.css">
<link rel="stylesheet" href="${cp}/css/admin_index.css">
<script type="text/javascript" src="${cp}/script/jquery.js"></script>
<script type="text/javascript" src="${cp}/script/bootstrap.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${cp}/admin/enter.do">관리자페이지</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse"></div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="menu_list"><a href="${cp}/admin/counsel/enter.do">상담신청현황</a></li>
					<li class="menu_list"><a href="${cp}/admin/category/enter.do">상담과목관리</a></li>
					<li class="menu_list"><a href="${cp}/admin/blog/selectBlogAll.do">별 헤는 밤</a></li>
					<li class="menu_list"><a href="${cp}/admin/board/enter.do">공지사항</a></li>
					<li class="menu_list"><a href="${cp}/admin/qna/enter.do">온라인 문의</a></li>
					<li class="menu_list"><a href="${cp}/admin/logout.do">관리자 로그아웃</a></li>
				</ul>
			</div>

			<div class="col-xs-10 col-xs-offset-2">
				<c:choose>
					<c:when test="${not empty contentPage}">
						<jsp:include page="${requestScope.contentPage }" />
					</c:when>
					<c:otherwise>
						<jsp:include page="/admin_counsel.jsp" />
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>

</body>
</html>