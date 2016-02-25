<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

#board_notice img.dummy { margin-bottom: 16px; }

#board_notice .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 60%; }
#board_notice .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board_notice .left-side-bar ul li:last-child { border: 0px; }
#board_notice .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board_notice .right-article-list { border-left: 1px solid #eee; }
#board_notice .right-article-list .categories { margin-bottom: 16px; }
#board_notice .right-article-list .categories .category { padding: 6px 12px; margin-right: 8px; border: 1px solid #eee; }
#board_notice .right-article-list .categories .category { padding: 6px 12px; margin-right: 8px; border: 1px solid #eee; }
#board_notice .right-article-list .articles { font-size: 0.9em; }
</style>
</head>
<body>
 
	<div id="board_notice">
	
		<img class="dummy" alt="" src="img/dummy.jpg" style="height: 200px;">
		
		<div class="row">
			
			<!-- board left-side-bar -->
			<div class="col-md-2 left-side-bar">
			
				<ul class="pull-right">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a href="#">상담신청</a></li>
				</ul>
			
			</div>
			
			<!-- board content -->
			<div class="col-md-9 right-article-list">
			
				<div class="categories">
					
					<div>
						<span class="category">상담</span>
						<span class="category">치료요법</span>
						<span class="category">의약품 주문 관련</span>
						<span class="category">자가진단 테스트</span>
						<span class="category">1:1 문의</span>
						<span class="category">결제</span>
					</div>
					
				</div>
				
				<div class="articles">
				
					<table class="table">
						<tr>
							<th style="width: 8%;">글번호</th>
							<th style="width: 16%;">카테고리</th>
							<th>제목</th>
							<th style="width: 16%;">작성일시</th>
							<th style="width: 8%;">조회수</th>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
						<tr>
							<td>no.1</td>
							<td>테스트 카테고리</td>
							<td>테스트 제목</td>
							<td>2016년 2월 22일</td>
							<td>17</td>
						</tr>
					</table>
					
					<!-- paginator -->
				
				</div>
			
			</div>
			
		</div>
		
	</div>

</body>
</html>