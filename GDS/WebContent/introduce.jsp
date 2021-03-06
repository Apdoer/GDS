<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style type="text/css">
#introduce .insa {
	float: left;
	width: 50%;
	height: 400px;
}

#introduce .insa_picture {
	float: left;
	width: 50%;
	height: 460px;
	padding-left: 5%;
	margin-top: -8%;
}

#introduce .strong {
	color: #2CABEA;
	font-weight: bold;
	font-size: 18px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".a_link").click(function() {
			$(".a_link").removeClass('a_link_clicked');
			$(".a_link").addClass('a_link_unClicked');
			$(this).removeClass('a_link_unClicked');
			$(this).addClass('a_link_clicked');

		});

		$("#1").click(function() {
			$("html, body").animate({
				scrollTop : 0
			}, 1000);
		});

		$("#2").click(function() {
			$("html, body").animate({
				scrollTop : 790
			}, 1000);
		});
		$("#3").click(function() {
			$("html, body").animate({
				scrollTop : 1720
			}, 1000);
		});
		$("#4").click(function() {
			$("html, body").animate({
				scrollTop : 2200
			}, 1000);
			return;
		});
		$("#5").click(function() {
			$("html, body").animate({
				scrollTop : 2730
			}, 1000);
		});
	});
</script>

<div id="introduce" class="container">

	<!-- board left-side-bar -->
	<div class="col-xs-2 left-side-bar affix">
		<ul class="pull-left">
			<li><a id="1" class="a_link a_link_clicked" href="#">인사말</a></li>
			<li><a id="2" class="a_link a_link_unClicked" href="#2">추천사</a></li>
			<li><a id="3" class="a_link a_link_unClicked" href="#3">협력기관</a></li>
			<li><a id="4" class="a_link a_link_unClicked" href="#4">운영방식
					및 시간</a></li>
			<li><a id="5" class="a_link a_link_unClicked" href="#5">오시는길</a></li>
		</ul>
	</div>

	<div class="row">
		<div class="col-xs-8 col-xs-offset-3 content">

			<h1 class="title">인사말</h1>

			<div class="detail" style="line-height: 2.3em;">
				<div class="row">
					<div class="col-xs-6">
						안녕하십니까?
						<div class="strong">지디에스 분당중앙센터는 발달장애/학습장애로 어려움을 겪고 있는 “조금은
							특별한” 우리 아이들을 위한 공간입니다.</div>
						뇌를 활성화 하는 적절한 훈련, 감각 해소, 그리고 통합의학적 (Bio-med) 접근을 통해 
					</div>
					<div class="col-xs-6" style="text-align: center;">
						<img src="image/insamal.png">
					</div>
				</div>
				<div>
				우리 아이들의 문제는
						충분히 개선될 수 있습니다.
						<div class="strong">부모의 마음으로 우리 아이들이 밝고 행복한 미래를 맞이할 수 있도록
							최선을 다하겠습니다.</div>
						<div align="right"
							style="font-weight: bold; font-size: 18px; margin-top: 3%;">
							지디에스 분당중앙센터장 <strong style="font-size: 22px;">김학기</strong>
						</div>
				</div>
				<div style="margin-top: 5%;">
					<div style="font-weight: bold; font-size: 18px;">
						<strong style="font-size: 22px;">김학기</strong>센터장
					</div>
					<img src="image/point2.png" style="width: 2.5%;"> 서강대 경제학과 졸업<br>
					<img src="image/point2.png" style="width: 2.5%;"> 지디에스 분당중앙센터
					센터장<br> <img src="image/point2.png" style="width: 2.5%;">
					시지각/청지각 전문가 (토마티스 전문 자격 취득, 셀필드 국내 최다 이수자 배출)<br> <img
						src="image/point2.png" style="width: 2.5%;"> 발달장애/학습장애 컨설턴트
				</div>

			</div>

			<hr>
			<h1 class="title">추천사</h1>
			<div class="detail" style="line-height: 2.3em">
				<div class="row">
					<div class="col-xs-12"
						style="float: left; width: 100%; margin-top: 5%;">
						<img src="image/chuchunsa.jpg" style="width: 100%;">
					</div>
					<div class="col-xs-12"
						style="float: left; width: 100%; margin-top: 8%;">
						<div style="color: #2CABEA; font-weight: bold; font-size: 18px;">우리
							아이들의 감각적 문제를 정확히 진단하고, 가장 효율적 치료법을 제시할 수 있는 국내 유일의 공간이라 생각합니다.</div>
						더욱이 분당중앙센터내에 우리세상발달학교, 우리세상특수대안학교 개교를 통해 감각 해소를 위한 국내 최대 규모의 감각
						통합실과 대형 트렘폴린 장을 완비하였습니다. 같은 아픔을 겪는 부모들과 대화하는 곳인 만큼 조금도 망설이지 말고 문을
						두드려 주세요.
						<div style="color: #2CABEA; font-weight: bold; font-size: 18px;">발달장애/학습장애
							아동을 위한 해답, 분명이 있습니다.</div>
						<div align="right"
							style="font-weight: bold; font-size: 18px; margin-top: 3%;">
							태균맘 <strong style="font-size: 22px;">황순재 대표</strong>
						</div>
					</div>
				</div>
				<div style="margin-top: 5%;">
					<div style="font-weight: bold; font-size: 18px;">
						<strong style="font-size: 22px;">황순재</strong>대표
					</div>
					<img src="image/point2.png" style="width: 2.5%;"> 고려대 사회학과 졸업<br>
					<img src="image/point2.png" style="width: 2.5%;"> 대구대 일반대학원
					특수교육 석사<br> <img src="image/point2.png" style="width: 2.5%;">
					우리세상 발달학교 , 우리세상 특수 대안학교 설립자<br> <img src="image/point2.png"
						style="width: 2.5%;"> 다음까페 “행복한 자폐아” 운영자
				</div>
			</div>

			<hr>
			<h2 class="title">협력기관</h2>
			<div id="4"></div>
			<div>
				<img class="img-rounded" alt="" src="${cp }/image/pa_i.png"
					style="width: 100%; height: 100%;">
			</div>
			<hr>
			<h2 class="title">운영방식 및 시간</h2>
			<div class="detail" style="line-height: 2.3em;margin-top: 10px;">
				본 센터는 예약제로 운영됨이 원칙이나, 언제든 개방되어 있습니다.<br> 미리 전화로 시간을 예약해 주시면 좀 더
				편안하게 상담 및 치료가 가능합니다.<br> <strong
					style="font-weight: bold; font-size: 20px; color: #2CABEA;">센터장
					및 태균맘 상담은 100% 무료 상담이니 부담 없이 연락바랍니다.</strong>

				<div style="float: left; width: 60%;">
					<h3>상담예약전화</h3>

					<span class="big_blue">031-711-3546 / 010-3247-3535</span>

					<h3>운영시간</h3>
					<span class="big_blue">월~금 : 오전 9시 ~ 오후 6시</span><br>
					<span class="big_blue">토 : 오전 10시 ~ 오후 3시</span>
				</div>
				<div
					style="float: left; width: 40%; padding-left: 10%; margin-top: 10px;">
					<img src="image/im_10.png">
				</div>
				<div>사전에
					예약된 경우는 야간이나 주말에도 센터 이용 및 상담 가능합니다.<br> 고압 산소 치료의 경우 365일 24시간
					개방 체제로 언제든지 자유롭게 이용가능합니다.</div>
			</div>
			<hr style="clear: both;">
			<h2 class="title">오시는길</h2>
			<div class="detail">
				<div>
					<img class="img-rounded" alt="" src="${cp}/image/map_2.png"
						style="width: 100%;">
				</div>
				<div style="margin-top: 20px;">
					<h4>
						<img src="${cp }/image/icon4.png"> 도로명주소
					</h4>
					&nbsp;&nbsp;&nbsp;&nbsp;경기도 성남시 분당구 동막로 245번길 12 1층 지디에스 분당중앙센터
					&nbsp;&nbsp;&nbsp;&nbsp;(분당선 미금역에서 서분당IC방면 차량 3분거리)
				</div>

				<div style="margin-top: 20px;">
					<h4>
						<img src="${cp }/image/icon4.png">지하철+버스
					</h4>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;분당선 미금역 8번출구 하차 - 32번 버스(미금역,
						2001아울렛)승차 - 아우중고정류장에서 하차 약 100m 이동</p>
				</div>
				<img class="img-rounded" alt="" src="${cp}/image/map_3.png"
					style="width: 100%; height: 100%;">
				<!-- <p align="right"><strong>T.031-711-3546 &nbsp;&nbsp;M.010-3247-3535</strong> </p> -->
			</div>




		</div>

	</div>

</div>
<!-- /.container -->