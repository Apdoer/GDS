<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#clinic h5 {
	font-weight: bold;
	padding-left: 10px;
	font-size: 1.01em;
}
</style>

<div id="clinic" class="container">
	<div class="col-md-3 col-lg-2 left-side-bar affix">
		<ul class="pull-left">
			<li><a class="a_link_unClicked" href="${cp }/clinic1.do">자폐스펙트럼장애</a></li>
			<li><a class="a_link_unClicked" href="${cp }/clinic2.do">주의력결핍/<br>과잉행동
					장애
			</a></li>
			<li><a class="a_link_clicked" href="${cp }/clinic3.do">학습장애</a></li>
			<li><a class="a_link_unClicked" href="${cp }/clinic4.do">사회성부족</a></li>
		</ul>
	</div>

	<div class="row">

		<div class="col-md-8 col-md-offset-3 content">

			<div class="title-horizontal">
				<h1>학습장애</h1>
				<div class="title-detail">
					발달장애와 관련된 질환들을<br>과학적으로 분석 대처할 수 있습니다.
				</div>
			</div>

			<hr>

			<h4>
				<img src="${cp }/image/icon4.png"> 학습장애란?
			</h4>
			<p class="detail">학습장애란 읽기, 쓰기, 추론, 산수 계산 등에 심각한 곤란을 주 증상으로 하는
				장애군입니다. 학습 분야에 따라서 학습장애를 분류할 수 있는데, 글자를 읽고 이해하는 능력이 저하되었을 경우 읽기
				장애(난독증), 자신의 생각을 표현하는 쓰기 능력이 저하된 경우 쓰기 장애, 수리 연산과 산수 문제 해결에 결함이 있을
				경우 산수 장애라고 합니다. 지능과 연령을 근거로 기대되는 능력의 50% 미만의 성취도를 보일 때 학습장애라 정의합니다.</p>

			<h4>
				<img src="${cp }/image/icon4.png"> 증상적 특성
			</h4>
			<h5>1. 읽기 장애(난독증)</h5>
			<p class="detail">단어를 소리 내어 발음하는 데에 어려움이 있고(틀린 발음, 혼란된 발음), 읽기
				속도가 매우 느리며, 읽은 문장을 이해하는 것도 힘들어 합니다. 난독증은 크게 시각적 난독증, 청각적 난독증, 운동
				난독증으로 분류하기도 합니다. 시각적 난독증이란 단어를 보고 이를 소리로 연결시키는 데 어려움을 겪는 경우를 말하며,
				청각적 난독증이란 비슷한 소리를 구분하고 발음하는 데 어려움을 겪는 경우입니다. 운동 난독증은 글씨 쓰기를 할 때 손을
				움직이는 방향을 헷갈려 하는 경우를 말합니다. 대개 미취학 시기부터 단어를 이해하는데 어려움을 겪거나, 발음을 자주 틀리게
				하거나, 말을 더듬는 등의 증상이 나타날 수 있으며, 취학 초기에는 글씨를 베껴 적는데 어려움을 겪거나, 학습 자체에
				취미를 잃기가 쉽습니다. 그러나 사물이나 그림, 도표의 의미를 받아들이는 능력에는 지장이 없어 지능 저하로 인한 학습
				장애와는 감별됩니다.</p>
			<img src="${cp }/image/clinic3_check.png"
				style="margin-left: 10%; margin-top: 3%; margin-bottom: 5%;">
			<h5>2. 쓰기 장애</h5>
			<p class="detail">철자의 오류가 매우 많고, 반복적인 학습에도 불구하고 철자의 혼란이 교정되지 않으며,
				일기 쓰기 등에서 내용이 매우 미숙하고 문법적인 오류를 많이 보입니다.</p>
			<h5>3. 산수 장애</h5>
			<p class="detail">더하기, 빼기, 곱하기 등의 기본 연산을 제대로 하지 못하는 경우와 문제에 대해
				언어적인 이해를 못하는 경우가 많고, 자릿수 등 공간적 배열을 이해하지 못하는 경우도 많습니다.</p>
			<h4>
				<img src="${cp }/image/icon4.png"> 원인과 해결방법
			</h4>
			<p class="detail">학습장애는 기본적으로 중추신경계, 특히 대뇌의 특정 영역의 발달적인 기능 장애로 인한
				것으로 보고되고 있습니다. 물론 자기 조절적 행동, 사회 지각에서의 문제가 공존할 수 있으나, 이것이 단독으로 학습장애를
				일으키는 것은 아닙니다. 유전적인 기반을 갖는 특정 뇌 영역과 뇌 영역 간의 연결망의 발달적 결함에 의해서 발병하는
				질환이므로, 특정 정보 처리 과정의 결함을 유발하는 뇌 영역 및 연결망의 활성화를 위한 치료적인 도움이 필요합니다.</p>

		</div>

	</div>

</div>