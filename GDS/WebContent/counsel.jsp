 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="cp" value="${pageContext.request.contextPath}" />
 
 <script type="text/javascript">

$(document).ready(function() {
	$("#submitBtn").click(formCheck);

function formCheck(){
	if ($("#name").val()==null || $("#name").val()==""){
		$("#name").focus();
		alert("이름을 입력해주세요");
		return;
	}
	if ($("#phone2").val()==null || $("#phone2").val()==""){
		$("#phone2").focus();
		alert("전화번호를 입력해주세요");
		return;
	}
	if ($("#phone3").val()==null || $("#phone3").val()==""){
		$("#phone3").focus();
		alert("전화번호를 입력해주세요");
		return;
	}
	
	counselSubmit();
}

function counselSubmit(){	
	/* 디버깅용 코드
	var categoryId=$("#counsel_category option:selected").val();
	var counseleeName=$("#name").val();
	var counseleeTelno=$("#phone").val();
	var possibleTime=$("#p_time option:selected").val();
	var detail=$("#detail").val();
	alert("categoryId:"+categoryId+", name:"+counseleeName+", time:"+possibleTime+", detail:"+detail+", phone:"+counseleeTelno);
	
	 */
	 
	 //alert($("#phone1").val()+$("#phone2").val()+$("#phone3").val());
	 
	$.post("${pageContext.request.contextPath}/createCounsel.do",
			{"categoryId" : $("#counsel_category option:selected").val(),
			 "counseleeName" : $("#name").val(),
			 "counseleeTelno" : $("#phone1 option:selected").val()+$("#phone2").val()+$("#phone3").val(),
			 "possibleTime" : $("#p_time option:selected").val(),
			 "detail" : $("#detail").val().replace(/\n/g, '<br>')
			},
		function(jsonObj){
				if(jsonObj.status){
					alert(jsonObj.message);
					$("#name").val('');
					$("#phone2").val('');
					$("#phone3").val('');
					$("#detail").val('');
				}else{
					alert(jsonObj.message);
				};
			});		
}
	
});

</script>

<style type="text/css">
#counsel{
	margin-top:30px;
	margin-bottom:30px;
}
#counsel .intro{
	font-size: medium;
	fon
}
</style>
 
 
	<div id="counsel">
	
		<img class="dummy" alt="" src="${cp}/image/ba_0.png" style="width:100%">
		
		<div class="row">
					
			<!-- board content -->
			<div class="col-md-6 col-md-offset-3">
			
				<!-- <div class="intro">
					<h2>지금 상담 신청하세요!</h2>
					<h3><span style="color: #3498DB;">GDS</span>는 항상 기다리고 있습니다.</h3>
					<p>본 센터는 예약제로 운영됨이 원칙이나, 언제든 개방되어 있습니다.</p>
					<p>상담예약전화 : <span style="color: #3498DB; font-weight: bold;">031-711-3546</span> / <span style="color: #3498DB; font-weight: bold;">010-3247-3535</span></p>
					<button type="button" class="btn btn-info" style="">개인정보취급방침 보기</button>
				</div>
				
				<div class="line-horizontal" style="border: 1px solid #eee; border-radius: 1px; margin: 16px 0px;"></div>
				 -->
				<div class="intro">
					<p align="center">별도로 상담을 예약 하시면  상담 가능하신 시간에 맞춰 지디에스 분당중앙센터에서 전화 연락을 드립니다.</p>
					<p align="center">지디에스 분당중앙센터의 모든 검사 및 상담기록은 <span style="color: red;">절대</span> 공개되거나 남지 않습니다.</p>
					<br>
				</div>
				
				<div class="counsel-phone">
					
					<div class="">
						<div class="form-horizontal">
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">
									<span style="color: red; margin-right: 3px;">*</span>
									이름
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="name" required>
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label " >
									<span style="color: red; margin-right: 3px;">*</span>
									전화번호
								</label>
								<div class="col-sm-10">
									<select class="form-control" style="width:20%;display:inline-block;" id="phone1">
										<option value="010">010</option>
										<option value="02">02</option>
										<option value="031">031</option>
										<option value="032">032</option>
										<option value="033">033</option>
										<option value="041">041</option>
										<option value="042">042</option>
										<option value="043">043</option>
										<option value="044">044</option>
										<option value="051">051</option>
										<option value="052">052</option>
										<option value="053">053</option>
										<option value="054">054</option>
										<option value="055">055</option>
										<option value="061">061</option>
										<option value="062">062</option>
										<option value="063">063</option>
										<option value="064">064</option>								
									</select>
									<!-- <input type="number" class="form-control" id="phone1" style="width:20%;display:inline-block;" required >  -->
									- <input type="number" class="form-control" id="phone2" style="width:20%;display:inline-block;" size="4" required > 
									- <input type="number" class="form-control" id="phone3" style="width:20%;display:inline-block;" size="4" required >
								</div>
							</div>
							<div class="form-group">
								<label for="sort" class="col-sm-2 control-label">상담과목</label>
								<div class="col-sm-10">
									<select class="form-control" id="counsel_category">
										<c:forEach items="${categoryList}" var="category">
											<option value="${category.id}">${category.name}</option>
										</c:forEach>
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
									<textarea id="detail"  maxlength="3200" class="form-control" rows="5"></textarea>
								</div>
							</div>
							<button id="submitBtn" class="btn btn-info pull-right" type="submit">전화상담 예약하기</button>
						</div>
					</div>
					
					
				</div>
				
			
			</div>
			
		</div>
		
	</div>