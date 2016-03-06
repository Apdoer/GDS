 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <script type="text/javascript">

$(document).ready(function() {
	$("#submitBtn").click(counselSubmit);

function counselSubmit(){	
	var categoryId=$("#counsel_category option:selected").val();
	var counseleeName=$("#name").val();
	var counseleeTelno=$("#phone").val();
	var possibleTime=$("#p_time option:selected").val();
	var detail=$("#detail").val();
	//alert("categoryId:"+categoryId+", name:"+counseleeName+", time:"+possibleTime+", detail:"+detail+", phone:"+counseleeTelno);
	
	
	$.getJSON("${pageContext.request.contextPath}/createCounsel.do",
			{"categoryId" : $("#counsel_category option:selected").val(),
			 "counseleeName" : $("#name").val(),
			 "counseleeTelNo" : $("#phone").val(),
			 "possibleTime" : $("#p_time option:selected").val(),
			 "detail" : $("#detail").val()
			},
		function(jsonObj){
				if(jsonObj.status){
					alert(jsonObj.message);
					$("name").val("");
					$("phone").val("");
					$("detail").val("");
				}else{
					alert(jsonObj.message);
				};
			});	
	
}
	
});

</script>
 
 
	<div id="board_counsel">
	
		<img class="dummy" alt="" src="img/dummy.jpg" style="width: 100%; height: 320px;">
		
		<div class="row">
			
			<!-- board left-side-bar -->
			<div class="col-md-2 left-side-bar">
			
				<ul class="pull-right">
					
					
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
				
				<div class="line-horizontal" style="border: 1px solid #eee; border-radius: 1px; margin: 16px 0px;"></div>
				
				<div class="intro">
					<p>지금 바로 전화 상담 신청하세요. 상담 가능하신 시간에 맞춰 지디에스 분당중앙센터에서 전화 연락을 드립니다.</p>
					<p>GDS의 모든 검사 및 상담기록은 <span style="color: red;">절대</span> 공개되거나 남지 않습니다.</p>
				</div>
				
				<div class="counsel-phone row">
					
					<div class="col-sm-9">
						<div class="form-horizontal">
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">
									<span style="color: red; margin-right: 3px;">*</span>
									이름
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="name" value="토마스">
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label">
									<span style="color: red; margin-right: 3px;">*</span>
									전화번호
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="phone" value="01023450987">
								</div>
							</div>
							<div class="form-group">
								<label for="sort" class="col-sm-2 control-label">상담과목</label>
								<div class="col-sm-10">
									<select class="form-control" id="counsel_category">
										<option value="1">자폐 스펙트럼 장애</option>
										<option value="2">주의력 결핍/과잉행동장애(ADD,ADHD)</option>
										<option value="3">학습 장애</option>
										<option value="4">사회성 부족</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="time" class="col-sm-2 control-label">상담가능시간</label>
								<div class="col-sm-10">
									<select class="form-control" id="p_time">
										<option value="10">오전 10시~11시</option>
										<option value="11">오전 11시~12시</option>
										<option value="12">오전 12시~13시</option>
										<option value="13">오후  1시~2시</option>
										<option value="14">오후  2시~3시</option>
										<option value="15">오후  3시~4시</option>
										<option value="16">오후  4시~5시</option>
										<option value="17">오후  5시~6시</option>
										<option value="18">오후  6시~7시</option>
										<option value="19">오후  7시~8시</option>								
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="detail" class="col-sm-2 control-label">세부문의내용</label>
								<div class="col-sm-10">
									<textarea id="detail" class="form-control" rows="5">상담신청합니다</textarea>
								</div>
							</div>
							<button id="submitBtn" class="btn btn-info pull-right" type="submit">전화상담 예약하기</button>
						</div>
					</div>
					
					<div class="col-sm-3">
						<img class="dummy" alt="" src="img/dummy.jpg" style="width: 100%; height: 359px;">
					</div>					
					
				</div>
					
				<div class="line-horizontal"></div>
				
				<div class="counsel-kakao">
				
				</div>
			
			</div>
			
		</div>
		
	</div>