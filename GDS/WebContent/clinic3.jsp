<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#clinic {
	margin-top: 70px;
}

#clinic .left-side-bar ul {
	list-style: none;
	margin: 16px 0px 0px 0px;
	padding: 0px;
	width: 75%;
}

#clinic .left-side-bar ul li {
	border-bottom: 1px solid #eee;
}

#clinic .left-side-bar ul li:last-child {
	border: 0px;
}

#clinic .left-side-bar ul li a {
	display: inline-block;
	padding: 8px 16px;
	color: #aaa;
	font-size: 1.2em;
	text-decoration: none;
}
</style>

<div id="clinic" class="container">

	<div class="row">

		<!-- board left-side-bar -->
		<div class="col-md-3 left-side-bar">
			<ul class="pull-right">
				<li><a href="${cp}/clinic1.do">자폐 스펙트럼 장애</a></li>
				<li><a href="${cp}/clinic2.do">주의력 결핍/<br>과잉 행동 장애
				</a></li>
				<li><a href="${cp}/clinic3.do" style="font-weight: bold;">학습장애</a></li>
				<li><a href="${cp}/clinic4.do">사회성 부족</a></li>
			</ul>
		</div>

		<div class="col-md-8">
			<p>
			1.정의<br>
			        학습장애란 읽기, 쓰기, 추론, 산수 계산 등에 심각한 곤란을 주 증상으로 하는 장애군이다. 학습
				분야에 따라서 학습장애를 분류할 수 있는데, 글자를 읽고 이해하는 능력이 저하되었을 경우 읽기 장애(난독증), 자신의
				생각을 표현하는 쓰기 능력이 저하된 경우 쓰기 장애, 수리 연산과 산수 문제 해결에 결함이 있을 경우 산수 장애라고 한다.
				지능과 연령을 근거로 기대되는 능력의 50% 미만의 성취도를 보일 때 학습장애라 정의한다. <br><br>
			2. 증상적 특성<br>
				-읽기 장애(난독증)<br>
				단어를 소리 내어 발음하는 데에 어려움이 있고(틀린 발음, 혼란된 발음), 읽기 속도가 매우 느리며, 읽은
				문장을 이해하는 것도 힘들어 한다. 난독증은 크게 시각적 난독증, 청각적 난독증, 운동 난독증으로 분류하기도 한다. 시각적
				난독증이란 단어를 보고 이를 소리로 연결시키는 데 어려움을 겪는 경우를 말하며, 청각적 난독증이란 비슷한 소리를 구분하고
				발음하는 데 어려움을 겪는 경우이다. 운동 난독증은 글씨 쓰기를 할 때 손을 움직이는 방향을 헷갈려 하는 경우를 말한다.
				대개 미취학 시기부터 단어를 이해하는데 어려움을 겪거나, 발음을 자주 틀리게 하거나, 말을 더듬는 등의 증상이 나타날 수
				있으며, 취학 초기에는 글씨를 베껴 적는데 어려움을 겪거나, 학습 자체에 취미를 잃기가 쉽다. 그러나 사물이나 그림,
				도표의 의미를 받아들이는 능력에는 지장이 없어 지능 저하로 인한 학습 장애와는 감별된다. <br>
				1)말이 늦게 트이거나 말을 더듬는다. <br>
				2) 말이 어눌하게 들린다. <br>
				3) 발음이 명확하지 않거나 틀린다. 가령 ‘스파게티’를 ‘파스케티’로, ‘헬리콥터’를 ‘헤콜립터’로 말한다. <br>
				4) 단어를 기억해 내는 데 어려움을 겪는다. <br>
				5) 문장을 읽어도 뜻을 잘 인지하지 못한다. <br>
				6) 철자를 자주 틀린다. <br>
				7) 글쓰기에 어려움을 겪는다. <br>
				8) 숫자 24와 42 영어 b와d 등을 헷갈려한다.<br><br>

				- 쓰기 장애 <br>
				철자의 오류가 매우 많고, 반복적인 학습에도 불구하고 철자의 혼란이 교정되지 않으며, 일기 쓰기 등에서 내용이
				매우 미숙하고 문법적인 오류를 많이 보인다. <br>
				- 산수 장애<br>
				더하기, 빼기, 곱하기 등의 기본 연산을 제대로 하지 못하는 경우와
				문제에 대해 언어적인 이해를 못하는 경우가 많고, 자릿수 등 공간적 배열을 이해하지 못하는 경우도 많다. <br><br>
				
			3. 학습장애는 기본적으로 중추신경계, 특히 대뇌의 특정 영역의 발달적인 기능 장애로 인한 것으로 보고되고 있다. 물론 자기 조절적 행동,
				사회 지각에서의 문제가 공존할 수 있으나, 이것이 단독으로 학습장애를 일으키는 것은 아니다. 유전적인 기반을 갖는 특정 뇌
				영역과 뇌 영역 간의 연결망의 발달적 결함에 의해서 발병하는 질환이므로, 특정 정보 처리 과정의 결함을 유발하는 뇌 영역
				및 연결망의 활성화를 위한 치료적인 도움이 필요하다.</p>
		</div>

	</div>

</div>