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

#board_event img.dummy { margin-bottom: 16px; }

#board_event .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 60%; }
#board_event .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board_event .left-side-bar ul li:last-child { border: 0px; }
#board_event .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board_event .right-article-list { border-left: 1px solid #eee; }
#board_event .right-article-list .categories { margin-bottom: 16px; }
#board_event .right-article-list .categories .category { display: inline-table; padding: 6px 12px; margin: 3px; border: 1px solid #eee; }
#board_event .right-article-list .categories .category:first-child { margin-left: 0px; }
#board_event .right-article-list .articles { font-size: 0.9em; margin-bottom: 32px; }
#board_event .right-article-list .articles table { margin-bottom: 0px; }
#board_event .right-article-list .articles table th { text-align: center; }
#board_event .right-article-list .articles table th,
#board_event .right-article-list .articles table td { padding: 6px 16px; vertical-align: middle; cursor: pointer; }
#board_event .right-article-list .articles table td span.event { display: inline-block; margin-left: 6px; padding: 3px 6px; border-radius: 12px; }
#board_event .right-article-list .articles table td span.event.ongoing { background-color: blue; color: white; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>
</head>
<body>
 
	<div id="board_event">
	
		<img class="dummy" alt="" src="img/dummy.jpg" style="height: 200px;">
		
		<div class="row">
			
			<!-- board left-side-bar -->
			<div class="col-md-2 left-side-bar">
			
				<ul class="pull-right">
					<li><a href="#">공지사항</a></li>
					<li><a href="#" style="font-weight: bold;">이벤트</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">상담신청</a></li>
				</ul>
			
			</div>
			
			<!-- board content -->
			<div class="col-md-9 right-article-list">
			
				<div class="articles">
				
					<table class="table">
						<tr>
							<th>제목</th>
							<th style="width: 30%;">이벤트 기간</th>
							<th style="width: 8%;">조회수</th>
						</tr>
						<tr>
							<td style="padding-left: 8px;">봄 맞이 특별 이벤트 할인 행사</td>
							<td style="text-align: center;">
								2016.03.24 - 2016.05.16
							</td>
							<td style="text-align: center;">27</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">[한정] 인지 발달 보조 신약 제공 이벤트 II</td>
							<td style="text-align: center;">
								2016.03.02 - 2016.03.26
							</td>
							<td style="text-align: center;">129</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">GDS 본사에서 수행하는 발달검사에 참여 할 수 있는 기회!</td>
							<td style="text-align: center;">
								2016.02.14 - 2016.03.14
								<span class="event ongoing">진행중</span>
							</td>
							<td style="text-align: center;">128</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">[한정] 인지 발달 보조 신약 제공 이벤트 I</td>
							<td style="text-align: center;">
								2016.02.12 - 2016.03.01
								<span class="event ongoing">진행중</span>
							</td>
							<td style="text-align: center;">277</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">이벤트 게시판 게시글 샘플인데, 마음에 드셨나요?</td>
							<td style="text-align: center;">
								2016.02.01 - 2016.02.01
							</td>
							<td style="text-align: center;">709</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">[선착순] 온라인 홈페이지 기념 도서 증정 이벤트</td>
							<td style="text-align: center;">
								2016.01.12 - 2016.01.26
							</td>
							<td style="text-align: center;">411</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">소중한 마음을 전달하세요.</td>
							<td style="text-align: center;">
								2016.01.09 - 2016.01.14
							</td>
							<td style="text-align: center;">182</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">프로그램 후기를 공유해주세요.</td>
							<td style="text-align: center;">
								2016.01.01 - 2016.01.31
							</td>
							<td style="text-align: center;">142</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">2015년을 마무리하며..</td>
							<td style="text-align: center;">
								2015.12.29 - 2015.12.31
							</td>
							<td style="text-align: center;">213</td>
						</tr>
						<tr>
							<td style="padding-left: 8px;">GDS 분당센터 오픈 기념 이벤트</td>
							<td style="text-align: center;">
								2015.10.01 - 2015.10.07
							</td>
							<td style="text-align: center;">598</td>
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