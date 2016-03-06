<%@ page language ="java" contentType ="text/html; charset=UTF-8"
    pageEncoding= "UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<! DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv= "Content-Type" content= "text/html; charset=UTF-8">
<title>Insert title here</title>
<script type= "text/javascript" src= "se2/js/HuskyEZCreator.js" charset= "utf-8"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style type="text/css">

</style>

</head>
<body>
<div class="container">
    <div class="blog-header">
      <h1 class="blog-title" style="font:bold; border-bottom:solid 1px gray;
       padding-bottom: 10px; width: 100%;">별헤는 밤...</h1>
       <p class="lead blog-description">아름다운 우리들의 동행에 참여하세요..</p>
    	<div class="buttons center">
			<a href="${cp}/blog/editBlog.do" class="btn btn-default">별 헤는 글쓰기</a>
		</div>
    </div>
    <c:forEach items="${blogList}" var="blogList">
	    <div class="col-sm-8 blog-main">
	       <div class="blog-post">
	         <h2 class="blog-post-title"><a href="${cp}/blog/selectBlog.do?id=${blogList.id}">${blogList.title}</a></h2>
	         <p class="blog-post-meta">${blogList.regdate}&nbsp<a href="#">상육이</a></p>
	         <p>${blogList.content}</p>
		     <hr>
	   		</div>
	    </div>
	</c:forEach>
</div>
</body>
</html>
