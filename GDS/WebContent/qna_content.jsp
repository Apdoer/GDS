<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna { padding-top: 60px; }
#qna .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#qna .left-side-bar ul li { border-bottom: 1px solid #eee; }
#qna .left-side-bar ul li:last-child { border: 0px; }
#qna .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#qna .right-article-content .title { padding: 8px; }
#qna .right-article-content .title h1 { margin: 0px; }
#qna .right-article-content .title h1 small { margin-left: 16px; }
#qna .right-article-content .content { padding: 16px 8px; }
#qna .right-article-content .content .header { color: #777; margin-bottom: 8px; }
#qna .right-article-content .content .header span:first-child { margin-right: 8px; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<div id="qna">

	<div class="row">
		
		<!-- qna left-side-bar -->
		<div class="col-md-2 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="${cp}/board/enter.do">공지사항</a></li>
				<li><a href="${cp}/qna/enter.do" style="font-weight: bold;">온라인 문의</a></li>
			</ul>
		
		</div>
		
		<!-- qna content -->
		<div class="col-md-9 right-article-content">
		
			<div class="title">
				<h1>${qna.title}</h1>
			</div>
			
			<div class="line-horizontal" style="border: 1px solid #222; border-radius: 1px;"></div>
			
			<div class="content">
				<div class="header">
					<span>
						<span class="glyphicon glyphicon-calendar"></span>
						<fmt:formatDate value="${qna.regdate}" pattern="yyyy년 MM월 dd일"/> &nbsp;
					</span>
				</div>
				<div class="body">
					${qna.question}
				</div>
			</div>
			
		</div>
		
	</div>
	
</div>