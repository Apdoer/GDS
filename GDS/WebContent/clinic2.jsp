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
				<li><a href="${cp}/clinic1.do">자폐 스펙트럼 장애</a></li>
				<li><a href="${cp}/clinic2.do" style="font-weight: bold;">주의력 결핍/<br>과잉 행동 장애</a></li>
				<li><a href="${cp}/clinic3.do">학습장애</a></li>
				<li><a href="${cp}/clinic4.do">사회성 부족</a></li>
			</ul>
		
		</div>
		
		<div class="col-md-8">			
			<p>
				1. 정의<br>
				주의력 결핍/과잉행동 장애(Attention Deficit/Hyperactivity Disorder, ADHD)는 아동기에 많이 나타나는 장애로, 지속적으로 주의력이 부족하여 산만하고 과다활동, 충동성을 보이는 상태를 말합니다. 이러한 증상들을 치료하지 않고 방치할 경우 아동기 내내 여러 방면에서 어려움이 지속되고, 일부의 경우 청소년기와 성인기가 되어서도 증상이 남게 됩니다.<br><br>
				
				2. 증상적 특성<br>
				
				자극에 선택적으로 주의 집중하기 어려움 (시각적 변별/주의력 , 청각적 변별/주의력)<br>
				그릇된 행동을 지적 해도 잘 고쳐지지 않는다<br>
				누군가의 말을 듣고 있더라도 다른 소리가 나면 금방 그 곳으로 시선이 옮겨짐<br>
				학습에 있어 문제를 끝까지 읽지 않고 문제를 풀다 틀리는 등 한 곳에 오래 집중하는 것을 어려워함.<br>
				허락 없이 자리에서 일어나고, 뛰어다니고, 팔과 다리를 끊임없이 움직이는 등 활동 수준이 높음<br>
				생각하기 전에 행동하는 경향<br>
				말이나 행동이 많고, 규율을 이해하고 알고 있는 경우에도 급하게 행동하려는 욕구를 자제하지 못함<br><br>
				
				3. 유아기 행동 특성<br>
				- 유아기에는 젖을 잘 빨지 못하거나 먹는 동안 칭얼거리고 소량씩 여러 번 나누어서 먹여야 함<br>
				잠을 아주 적게 자거나 자더라도 자주 깨어남<br>
				떼를 많이 쓰고 투정을 부리고 안절부절 못하거나, 과도하게 손가락을 빨거나 머리를 박고 몸을 앞뒤로 흔드는 행동을 하기도 함.<br>
				기어다니기 시작하면 끊임없이 이리저리 헤집고 다니기도 하고 수면 및 수유 등 일과가 매우 불규칙적한 모습<br><br>
				
				4. ADHD 아이들은 충동적이고 산만한 행동 때문에 야단이나 꾸중과 같은 부정적인 얘기를 자주 듣게 된다. 따라서 주변에서 말 안 듣는 아이나 문제아로 평가되고, 스스로도 자신을 나쁜 아이, 뭐든지 잘 못하는 아이로 생각하게 된다. 이런 일이 반복되면 아이는 더욱 자신감이 없어진다. 주의집중 결함이나 충동성 때문에 또래 관계가 힘들게 되고 또래에게 따돌림을 당하기도 한다. 또 학습 능력이 떨어지고, 여러 가지 행동 문제를 보일 수도 있다. 
				
				그러나 ADHD는 이제 분명한 뇌신경 발달 질환으로 밝혀지고 있습니다. 문제의 원인을 조금만 과학적으로 도와주면 우리 아이들은 좀 더 드라마틱한 변화를 맞이할 수 있습니다. 
			
			</p>
		</div>

	</div>

</div>