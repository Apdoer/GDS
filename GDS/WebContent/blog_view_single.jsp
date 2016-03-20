<%@ page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding= "UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<script type= "text/javascript" src= "se2/js/HuskyEZCreator.js" charset= "utf-8"></script>
<!-- Optional theme -->
<style type="text/css">
#blog_view {margin-top: 70px;}

#blog_view .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#blog_view .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#blog_view .blog-title{font:bold; border-bottom:solid 1px #D5D5D5; padding-bottom: 10px; width: 100%;}
#blog_view .blog-title .btn { margin-left: 8px; }
#blog_view .col-md-9.blog-main{text-align:left; border-bottom: solid 3px #D5D5D5; margin-bottom: 50px; width: 100%;}
#blog_view .blog-post {margin:0 auto;}
#blog_view .blog-post-title {text-align:left; color: #000000; text-decoration: none;}
#blog_view .blog-post-meta {text-align:left;}
#blog_view .blog-post-content {text-align:left;}
</style>

<div id="blog_view" class="container">
	<div class="blog-header">
		<h1 class="blog-title">
			별헤는 밤
			<c:if test="${sessionScope.auth != null}">
				<c:if test="${blogList.size() == 1}">
					<a href="${cp}/blog/updateViewBlog.do?id=${blogList[0].id}" class="btn btn-info pull-right">글 수정</a>
					<a href="${cp}/blog/deleteBlog.do?id=${blogList[0].id}" class="btn btn-info pull-right">글 삭제</a>
				</c:if>
				<a href="${cp}/blog/editBlog.do" class="btn btn-info pull-right">글 쓰기</a>
			</c:if>	
		</h1>
	</div>
	<c:forEach items="${blogList}" var="blogList">
		<div class="col-md-9 blog-main">
			<div class="blog-post">
				<h2 class="blog-post-title">
					<a href="${cp}/blog/selectBlog.do?id=${blogList.id}" style="color: black; text-decoration: none;">${blogList.title}</a>
				</h2>
				<p class="blog-post-meta">${blogList.regdate}</p>
				<p class="blog-post-content">${blogList.content}</p>
			</div>
		</div>
	</c:forEach>
</div>
