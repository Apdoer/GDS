 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div id="board_counsel">
	
		<img class="dummy" alt="" src="img/dummy.jpg" style="height: 200px;">
		
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
			
				<div class="intro">
					<h2>지금 상담 신청하세요!</h2>
					<h3><span style="color: #3498DB;">GDS</span>는 항상 기다리고 있습니다.</h3>
					<p>본 센터는 예약제로 운영됨이 원칙이나, 언제든 개방되어 있습니다.</p>
					<p>상담예약전화 : <span style="color: #3498DB; font-weight: bold;">031-711-3546</span> / <span style="color: #3498DB; font-weight: bold;">010-3247-3535</span></p>
					<button type="button" class="btn btn-info" style="">개인정보취급방침 보기</button>
				</div>
				
				<div class="line-horizontal"></div>
				
				<div class="intro">
					<p>미리 상담시간을 예약해주시면 좀 더 편안하게 상담 및 치료가 가능합니다.</p>
					<p>GDS의 모든 검사 및 상담기록은 <span style="color: red;">절대</span> 공개되거나 남지 않습니다.</p>
				</div>
				
				<div class="counsel-phone row">
					
					<div class="col-sm-9">
						<form class="form-horizontal">
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">
									<span style="color: red; margin-right: 3px;">*</span>
									이름
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="name">
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label">
									<span style="color: red; margin-right: 3px;">*</span>
									전화번호
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="phone">
								</div>
							</div>
							<div class="form-group">
								<label for="sort" class="col-sm-2 control-label">상담과목</label>
								<div class="col-sm-10">
									<select class="form-control" id="sort">
										<option value="developmental-disability">발달장애</option>
										<option value="learning-disorder">학습장애</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="time" class="col-sm-2 control-label">상담가능시간</label>
								<div class="col-sm-10">
									<select class="form-control" id="name">
										<option value="10">오전 10시</option>
										<option value="11">오전 11시</option>
										<option value="12">오전 12시</option>
										<option value="13">오후  1시</option>
										<option value="14">오후  2시</option>
										<option value="15">오후  3시</option>
										<option value="16">오후  4시</option>
										<option value="17">오후  5시</option>
										<option value="18">오후  6시</option>
										<option value="19">오후  7시</option>								
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="detail" class="col-sm-2 control-label">세부문의내용</label>
								<div class="col-sm-10">
									<textarea id="detail" class="form-control" rows="5"></textarea>
								</div>
							</div>
							<button class="btn btn-info pull-right" type="submit" 
								onclick="javascript: return false;">전화상담 예약하기</button>
						</form>
					</div>
					
					<div class="col-sm-3">
						<img class="dummy" alt="" src="img/dummy.jpg" style="height: 359px;">
					</div>					
					
				</div>
					
				<div class="line-horizontal"></div>
				
				<div class="counsel-kakao">
				
				</div>
			
			</div>
			
		</div>
		
	</div>