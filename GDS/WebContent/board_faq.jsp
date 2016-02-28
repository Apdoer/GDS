<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GDS</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/default.css">
<script type="text/javascript" src="script/jquery.js"></script>
<style type="text/css">
body, table, td, input, textarea { font:12px; font-family: 'Nanum Gothic', serif; color:#555; }

#board_faq img.dummy { margin-bottom: 16px; }

#board_faq .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 60%; }
#board_faq .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board_faq .left-side-bar ul li:last-child { border: 0px; }
#board_faq .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board_faq .right-article-list { border-left: 1px solid #eee; }
#board_faq .right-article-list .categories { margin-bottom: 16px; }
#board_faq .right-article-list .categories .category { display: inline-block; margin: 0px 3px 6px 0px; padding: 6px 12px; width: 15%; border: 1px solid #eee; text-align: center; cursor: pointer; }
#board_faq .right-article-list .articles { font-size: 0.9em; margin-bottom: 32px; }
#board_faq .right-article-list .articles table { margin-bottom: 0px; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>
</head>
<body>
 
	<div id="board_faq">
	
		<img class="dummy" alt="" src="img/dummy.jpg" style="width: 100%; height: 320px;">
		
		<div class="row">
			
			<!-- board left-side-bar -->
			<div class="col-md-2 left-side-bar">
			
				<ul class="pull-right">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a href="#" style="font-weight: bold;">FAQ</a></li>
					<li><a href="#">상담신청</a></li>
				</ul>
			
			</div>
			
			<!-- board content -->
			<div class="col-md-9 right-article-list">
			
				<div class="categories">
					
					<div>
						<div class="category">ALL</div>
						<div class="category">상담</div>
						<div class="category">치료요법</div>
						<div class="category">의약품 주문 관련</div>
						<div class="category">자가진단 테스트</div>
						<div class="category">1:1 문의</div>
						<div class="category">결제</div>
						<div class="category">방문안내</div>
					</div>
					
				</div>
				
				<div class="articles">
				
					<table class="table">
						<tr>
							<th style="width: 16%;">카테고리</th>
							<th>제목</th>
							<th style="width: 16%;">작성일시</th>
							<th style="width: 8%;">조회수</th>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
					</table>
					
					<div class="paginator">
						<ul class="pagination">
							<li><a href="#"><span aria-hidden="true">&laquo;</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span aria-hidden="true">&raquo;</span></a></li>
						</ul>
					</div>
				
				</div>
			
			</div>
			
		</div>
		
	</div>

</body>
</html>