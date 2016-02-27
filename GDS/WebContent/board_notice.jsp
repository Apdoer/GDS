<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#board_notice img.dummy { margin-bottom: 16px; width: 100%; height: 320px; }

#board_notice .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 60%; }
#board_notice .left-side-bar ul li { border-bottom: 1px solid #eee; }
#board_notice .left-side-bar ul li:last-child { border: 0px; }
#board_notice .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#board_notice .right-article-list { border-left: 1px solid #eee; }
#board_notice .right-article-list .articles { font-size: 0.9em; margin-bottom: 32px; }
#board_notice .right-article-list .articles table { margin-bottom: 0px; }
#board_notice .right-article-list .articles table th { text-align: center; }
#board_notice .right-article-list .articles table th,
#board_notice .right-article-list .articles table td { padding: 12px 16px; cursor: pointer; }

.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>

<div id="board_notice">

	<img class="dummy" alt="" src="img/dummy.jpg">
	
	<div class="row">
		
		<!-- board left-side-bar -->
		<div class="col-md-2 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="#" style="font-weight: bold;">공지사항</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">FAQ</a></li>
				<li><a href="#">상담신청</a></li>
			</ul>
		
		</div>
		
		<!-- board content -->
		<div class="col-md-9 right-article-list">
		
			<div class="articles">
			
				<table class="table">
					<tr>
						<th style="width: 8%;">글번호</th>
						<th>제목</th>
						<th style="width: 16%;">작성일시</th>
						<th style="width: 8%;">조회수</th>
					</tr>
					<tr>
						<td style="text-align: center;">10</td>
						<td style="padding-left: 8px;">게시글 샘플을 작성하는건 쉽지 않은 일입니다.</td>
						<td style="text-align: center;">2016년 2월 14일</td>
						<td style="text-align: center;">94</td>
					</tr>
					<tr>
						<td style="text-align: center;">9</td>
						<td style="padding-left: 8px;">홈페이지가 이렇게 번창했으면 좋겠네요.</td>
						<td style="text-align: center;">2016년 1월 16일</td>
						<td style="text-align: center;">128</td>
					</tr>
					<tr>
						<td style="text-align: center;">8</td>
						<td style="padding-left: 8px;">행복한 크리스마스 보내시기 바랍니다.</td>
						<td style="text-align: center;">2015년 12월 23일</td>
						<td style="text-align: center;">332</td>
					</tr>
					<tr>
						<td style="text-align: center;">7</td>
						<td style="padding-left: 8px;">추석 연휴 간 전화상담 휴무를 안내드립니다.</td>
						<td style="text-align: center;">2015년 8월 30일</td>
						<td style="text-align: center;">452</td>
					</tr>
					<tr>
						<td style="text-align: center;">6</td>
						<td style="padding-left: 8px;">GDS 분당센터에서 새롭게 제공하는 프로그램을 소개합니다.</td>
						<td style="text-align: center;">2015년 7월 17일</td>
						<td style="text-align: center;">709</td>
					</tr>
					<tr>
						<td style="text-align: center;">5</td>
						<td style="padding-left: 8px;">공지사항 출력 샘플은 잘 보셨나요?</td>
						<td style="text-align: center;">2015년 6월 1일</td>
						<td style="text-align: center;">142</td>
					</tr>
					<tr>
						<td style="text-align: center;">4</td>
						<td style="padding-left: 8px;">학부모 모임을 개최 소식을 공유드립니다.</td>
						<td style="text-align: center;">2015년 5월 24일</td>
						<td style="text-align: center;">411</td>
					</tr>
					<tr>
						<td style="text-align: center;">3</td>
						<td style="padding-left: 8px;">GDS 분당센터 온라인 홈페이지가 여러분을 찾아갑니다.</td>
						<td style="text-align: center;">2015년 4월 11일</td>
						<td style="text-align: center;">182</td>
					</tr>
					<tr>
						<td style="text-align: center;">2</td>
						<td style="padding-left: 8px;">센터 방문 경로에 대해 추가안내드립니다.</td>
						<td style="text-align: center;">2014년 10월 29일</td>
						<td style="text-align: center;">213</td>
					</tr>
					<tr>
						<td style="text-align: center;">1</td>
						<td style="padding-left: 8px;">GDS 분당센터에 방문하신 것을 환영합니다.</td>
						<td style="text-align: center;">2014년 10월 21일</td>
						<td style="text-align: center;">328</td>
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