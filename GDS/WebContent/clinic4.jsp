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
				<li><a href="${cp}/clinic3.do">학습장애</a></li>
				<li><a href="${cp}/clinic4.do" style="font-weight: bold;">사회성 부족</a></li>
			</ul>

		</div>

		<div class="col-md-8">
			<p>1. 정의<br>
				 사회성은 누군가가 타인이나 기타 다른 주변 환경과 “관계”를 형성해 나가면서, 타인과 원만하게
				상호작용하는 능력, 다양한 사람과 긍정적인 관계를 형성하는 능력, 상황에 맞는 행동을 하는 능력을 말합니다. 그러나 특히
				학령기 혹은 유아기에 사회성이 부족하면 친구들과 어울리기 어렵고 다소 상황에 맞지 않는 상황 등으로 인해 왕따나, 자존감
				추락 등으로 이어질 수도 있으므로 관리가 필요합니다.<br><br> 
			2. 우리 아이도 사회성이 부족한가 ??<br> 
				(체크리스트)<br>
				1. 집에서는 활발하지만, 밖에서는 위축된 모습을 보이고 내성적이다 <br>
				2. 또래 집단과 어울리지 못해 겉도는 모습을 보인다 <br>
				3. 학교가기 싫다는 말을 자주 한다 <br>
				4. 감정기복이 심한 편이다 <br>
				5. 대화와 전혀 상관 없는 말을 한다 <br>
				6. 눈치가 없어 어른들에게 꾸중을 자주 듣는다 <br>
				7. 여가 시간을 친구와 어울리기 보다는 TV, 컴퓨터, 스마트폰을 하는데 쓴다 <br>
				8. 수줍음이 많고 자신감이 부족하다 <br>
				9. 집에서 친구에 대한 얘기를 거의 하지 않는다 <br>
				10. 자신의 생각이나 감정을 제대로 표현하지 못한다<br>
				11. 새로운 것을 싫어하고 반복되는 일(게임 등)을 계속하는 것을 좋아한다. <br><br>
			3. 사회성은 아이의 발달단계에 있어 상위
				레벨의 기능입니다. 이에 기초 공사에 해당되는 전정기관의 회복이 선행되지 않고서는 사회성 발달을 기대하기 어렵습니다.
				사회성 발달과 관계하는 감각 기관의 회복을 기본으로 훈련하면서, 교육적인 부분을 가미할때 효과는 배가 될 것입니다.</p>
		</div>

	</div>

</div>