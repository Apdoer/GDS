<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#clinic{
	margin-top:70px;
}
#clinic .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#clinic .left-side-bar ul li { border-bottom: 1px solid #eee; }
#clinic .left-side-bar ul li:last-child { border: 0px; }
#clinic .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

</style>

<div id="clinic" class="container">

	<div class="row">
		
		<!-- board left-side-bar -->
		<div class="col-md-3 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="${cp}/clinic1.do" style="font-weight: bold;">자폐 스펙트럼 장애</a></li>
				<li><a href="${cp}/clinic2.do">주의력 결핍/<br>과잉 행동 장애</a></li>
				<li><a href="${cp}/clinic3.do">학습장애</a></li>
				<li><a href="${cp}/clinic4.do">사회성 부족</a></li>
			</ul>
		
		</div>
		
		<div class="col-md-8">			
			<p>
			1. 정의<br>
			자폐스펙트럼장애는 행동조절능력,  학습, 사회적 상호작용, 의사소통을 담당하는 뇌의 중요 기능의 발달에 영향을 주는 뇌신경 발달 장애입니다.<br><br> 
			
			2. 범주<br>
			자폐스펙트럼장애<br>
			a.자폐성 장애 (Autistic Disorder)<br>
			B.레트 장애 (Rett’s Disorder)<br>
			C. 소아기 붕괴성 장애 (Childhood Disintegrative Disorder)<br>
			D. 아스퍼거 장애 (Asperger’s Disorder)<br>
			E. 비전형적 자폐스펙트럼장애 (PDD, NOS)<br><br>
			
			3. 증상적 특성<br>
			
			사회적 상호작용을 조절하기 위한 눈 마주치기, 얼굴 표정, 몸자세, 몸짓과 같은 다양한 비언어적 행동을 사용함에 현저한 장해<br>
			발달수준에 적합한 친구 관계 발달의 실패<br>
			자발적으로 다름 사람들과 기쁨, 관심, 성공을 나누지 못한다.<br>
			사회적으로나 감정적으로 서로 반응을 주고받는 상호 교류의 결여<br>
			구두 언어 발달의 지연 또는 완전한 발달 결여<br>
			적절하게 말을 하는 경우라도, 다른 사람과 대화를 시작하거나 지속하는 능력의 현저한 장해<br>
			발달수준에 적합한 자발적이고 다양한 가상적 놀이나 사회적 모방 놀이의 결여<br>
			강도나 초점에 있어서 비정상적인, 한 가지 이상의 상동증적이고 제한적인 관심에 집착<br> 
			특이하고 비효율적인 틀에 박힌 일이나 의식에 고집스럽게 매달림<br>
			상동증적이고 반복적인 동작성 매너리즘<br>
			대상의 부분에 지속적으로 몰두<br><br>
			
			4. 자폐스펙트럼 장애는 부모의 양육방법이나 태도와는 발병 연관성이 없습니다.<br> 
			  “뇌신경 발달장애” 라는 분명한 병명이 있는 만큼, 뇌신경의 가소성을 키워주는 적절한 훈련을 통해 충분히 개선될 수 있습니다.<br>
			
			</p>
		</div>

	</div>

</div>