<%@ page language ="java" contentType ="text/html; charset=UTF-8"
    pageEncoding= "UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<script type= "text/javascript" src= "se2/js/HuskyEZCreator.js" charset= "utf-8"></script>
<!-- Optional theme -->
<style type="text/css">
#blog_view {margin-top: 70px;}

#blog_view .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#blog_view .left-side-bar ul li { border-bottom: 1px solid #eee; }
#blog_view .left-side-bar ul li:last-child { border: 0px; }
#blog_view .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#blog_view .col-sm-8.blog-main{text-align:center; border: solid 3px gray; margin-bottom: 50px; border-radius:7px 10px 7px 10px;}
#blog_view .blog-post {margin:0 auto;}
#blog_view .blog-post-title {border-bottom: dotted 2px blue}
</style>

<div id="blog_view" class="container">
    <div class="blog-header">
      <h1 class="blog-title" style="font:bold; border-bottom:solid 1px gray;
       padding-bottom: 10px; width: 100%;">별헤는 밤...</h1>
       <p class="lead blog-description">아름다운 우리들의 동행에 참여하세요..</p>
    	<div class="buttons center">
			<a href="${cp}/blog/editBlog.do" class="btn btn-default">별 헤는 글쓰기</a>
		</div>
    </div>
    <c:forEach items="${blogList}" var="blogList">
	    <div class="col-sm-8 blog-main" >
	       <div class="blog-post">
	         <h2 class="blog-post-title"><a href="${cp}/blog/selectBlog.do?id=${blogList.id}">${blogList.title}</a></h2>
	         <p class="blog-post-meta">${blogList.regdate}&nbsp<a href="#">상육이</a></p>
	         <p>${blogList.content}</p>
		     <hr>
	   		</div>
	    </div>
	</c:forEach>
</div>
