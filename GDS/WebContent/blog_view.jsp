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
#blog_view .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#blog_view .blog-title{font:bold; border-bottom:solid 1px #D5D5D5; padding-bottom: 10px; width: 100%;}
#blog_view .col-md-9.blog-main{text-align:left; border-bottom: solid 3px #D5D5D5; margin-bottom: 50px; width: 100%;}
#blog_view .blog-post {margin:0 auto;}
#blog_view .blog-post-title {text-align:left; color: #000000; text-decoration: none;}
#blog_view .blog-post-meta {text-align:left;}
#blog_view .blog-post-content {text-align:left;}

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>

<div id="blog_view" class="container">
	<div class="content">
	</div>
<script type="text/javascript">
function listBoard(pageIdx) {
	$.ajax({
		url: '${cp}/blog/list.ajax',
		data: { 'currentPage': pageIdx }
	}).done(function(data) {
		console.log('hayo!');
		$('div.content').html(data);
	}).fail(function(error) {
		alert(error);
	});
}

$(function() {
	listBoard(1);
});
</script>	
</div>
