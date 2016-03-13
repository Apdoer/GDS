<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#board { padding-top: 20px; }
#board .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#board .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board .left-side-bar ul li:last-child { border: 0px; }
#board .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board .right-article-content .title { padding: 8px; }
#board .right-article-content .title h1 { margin: 0px; }
#board .right-article-content .title h1 small { margin-left: 16px; }
#board .right-article-content .content { padding: 16px 8px; }
#board .right-article-content .content .header { color: #777; margin-bottom: 8px; }
#board .right-article-content .content .header span:first-child { margin-right: 8px; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination { margin: 0px; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }

.buttons { margin-bottom: 32px; text-align: right; }
</style>

<c:choose>
	<c:when test="${fromAdmin}">
	
		<div id="board">
	
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
				
				<a href="${cp}/admin/board/updateViewBoard.do?id=${board.id}" class="btn btn-info">글 수정</a>
				<a href="${cp}/admin/board/delete.do?id=${board.id}" class="btn btn-danger">글 삭제</a>
				
			</div>
			
		</div>
	
	</c:when>
	<c:otherwise>
	
		<div id="board" class="container">
		
			<div class="row">
				
				<!-- board left-side-bar -->
				<div class="col-md-2 left-side-bar">
				
					<ul class="pull-right">
						<li><a href="${cp}/board/enter.do" style="font-weight: bold;">공지사항</a></li>
						<li><a href="${cp}/qna/enter.do">온라인 문의</a></li>
						<%-- <li><a href="${cp}/counsel.do">상담신청</a></li> --%>
					</ul>
				
				</div>
				
				<!-- board content -->
				<div class="col-md-9 right-article-content">
				<a href="${cp}/admin/board/updateViewBoard.do?id=${board.id}" class="btn btn-info">글 수정</a>
				<a href="${cp}/admin/board/delete.do?id=${board.id}" class="btn btn-danger">글 삭제</a>
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
					
				</div>
				
			</div>
			
		</div>
	
	</c:otherwise>
</c:choose>