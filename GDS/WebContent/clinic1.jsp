<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<div id="clinic" class="container">

	<!-- board left-side-bar -->
	<div class="col-md-3 col-lg-2 left-side-bar affix">
		<ul class="pull-left">
			<li><a class="a_link_clicked" href="${cp }/clinic1.do">자폐스펙트럼장애</a></li>
			<li><a class="a_link_unClicked" href="${cp }/clinic2.do">주의력 결핍/과잉행동 장애</a></li>
			<li><a class="a_link_unClicked" href="${cp }/clinic3.do">학습장애</a></li>
			<li><a class="a_link_unClicked" href="${cp }/clinic4.do">사회성부족</a></li>
		</ul>			
	</div>
	
	<div class="row">
		<div class="col-md-8 col-md-offset-3 content">
		
			<div class="title-horizontal">
				<h1>자폐 스펙트럼 장애</h1>
				<div class="title-detail">발달장애와 관련된 질환들을<br>과학적으로 분석 대처할 수 있습니다.</div>	
			</div>
			
			<hr>
			
			<h4 class="title"><img src="${cp}/image/icon4.png">&nbsp;자폐 스펙트럼 장애란?</h4>
			<div class="detail">
				자폐 스펙트럼 장애는 행동조절능력,  학습, 사회적 상호작용, 의사소통을 담당하는 뇌의 중요 기능의 발달에 영향을 주는 뇌신경 발달 장애입니다.
			</div>
			
			<h4><img src="${cp}/image/icon4.png">&nbsp;자폐 스펙트럼 장애의 범주</h4>
			<div class="detail">
				<ul style="list-style-type: square;">
					<li>자폐성 장애 (Autistic Disorder)</li>
					<li>레트 장애 (Rett’s Disorder)</li>
					<li>소아기 붕괴성 장애 (Childhood Disintegrative Disorder)</li>
					<li>아스퍼거 장애 (Asperger’s Disorder)</li>
					<li>비전형적 자폐 스펙트럼 장애 (PDD, NOS)</li>
				</ul>
			</div>
			
			<h4><img src="${cp}/image/icon4.png">&nbsp;증상적 특성</h4>
			<div class="detail">
				<ul style="list-style-type: square;">
					<li>사회적 상호작용을 조절하기 위한 눈 마주치기, 얼굴 표정, 몸자세, 몸짓과 같은 다양한 비언어적 행동을 사용함에 현저한 장해</li>
					<li>발달수준에 적합한 친구 관계 발달의 실패</li>
					<li>자발적으로 다름 사람들과 기쁨, 관심, 성공을 나누지 못한다.</li>
					<li>사회적으로나 감정적으로 서로 반응을 주고받는 상호 교류의 결여</li>
					<li>구두 언어 발달의 지연 또는 완전한 발달 결여</li>
					<li>적절하게 말을 하는 경우라도, 다른 사람과 대화를 시작하거나 지속하는 능력의 현저한 장해</li>
					<li>발달수준에 적합한 자발적이고 다양한 가상적 놀이나 사회적 모방 놀이의 결여</li>
					<li>강도나 초점에 있어서 비정상적인, 한 가지 이상의 상동증적이고 제한적인 관심에 집착</li> 
					<li>특이하고 비효율적인 틀에 박힌 일이나 의식에 고집스럽게 매달림</li>
					<li>상동증적이고 반복적인 동작성 매너리즘</li>
					<li>대상의 부분에 지속적으로 몰두</li>
				</ul>
			</div>
			
			<img src="${cp }/image/impact_2.png">
			
		</div>

	</div>

</div>