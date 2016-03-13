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
#clinic .left-side-bar ul li a { display: inline-block; padding: 8px 16px; font-size: 1.2em; text-decoration: none; }
#clinic .title h1{
	font-weight: 600;
}
#clinic .title{
	display: inline-block;
}
#clinic .title_detail{
	display: inline-block;
	color: #ABA7A7;
	margin-left: 5px;
}
#clinic hr{
	border-top: 3px solid #847373;
}

#clinic .content_detail{
	margin-left: 25px;
	color: #808080;
}
#clinic .a_link_clicked{
	font-weight: bold;
	color:#2cabea;
}
#clinic .a_link_unClicked{
	color: #aaa;
}
</style>

<div id="clinic" class="container">

	<!-- board left-side-bar -->
		<div class="col-md-3 col-lg-2 left-side-bar affix">
			<ul class="pull-left">
				<li><a class="a_link_unClicked" href="${cp }/clinic1.do">자폐스펙트럼장애</a></li>
				<li><a class="a_link_clicked" href="${cp }/clinic2.do">주의력 결핍/<br>과잉행동 장애</a></li>
				<li><a class="a_link_unClicked" href="${cp }/clinic3.do">학습장애</a></li>
				<li><a class="a_link_unClicked" href="${cp }/clinic4.do">사회성부족</a></li>
			</ul>			
	</div>

	<div class="row">		
		<div class="col-md-8 col-md-offset-3">
			<div>
				<br><br>
				<div class="title"><h1>주의력 결핍/과잉행동 장애</h1></div>
				<div class="title_detail"><span>발달장애와 관련된 질환들을<br>과학적으로 분석 대처할 수 있습니다.</span>	</div>
				<br><br>
				<hr><br>
				
				<h4><img src="${cp }/image/icon4.png"> 주의력 결핍/과잉행동 장애란?</h4><br>
				<p class="content_detail">주의력 결핍/과잉행동 장애(Attention Deficit/Hyperactivity Disorder, ADHD)는 아동기에 많이 나타나는 장애로, 지속적으로 주의력이 부족하여 산만하고 과다활동, 충동성을 보이는 상태를 말합니다. 이러한 증상들을 치료하지 않고 방치할 경우 아동기 내내 여러 방면에서 어려움이 지속되고, 일부의 경우 청소년기와 성인기가 되어서도 증상이 남게 됩니다.<br><br></p>
				
				<h4><img src="${cp }/image/icon4.png"> 증상적 특성</h4><br>
				<p class="content_detail">
				- 자극에 선택적으로 주의 집중하기 어려움 (시각적 변별/주의력 , 청각적 변별/주의력)<br>
				- 그릇된 행동을 지적 해도 잘 고쳐지지 않는다<br>
				- 누군가의 말을 듣고 있더라도 다른 소리가 나면 금방 그 곳으로 시선이 옮겨짐<br>
				- 학습에 있어 문제를 끝까지 읽지 않고 문제를 풀다 틀리는 등 한 곳에 오래 집중하는 것을 어려워함.<br>
				- 허락 없이 자리에서 일어나고, 뛰어다니고, 팔과 다리를 끊임없이 움직이는 등 활동 수준이 높음<br>
				- 생각하기 전에 행동하는 경향<br>
				- 말이나 행동이 많고, 규율을 이해하고 알고 있는 경우에도 급하게 행동하려는 욕구를 자제하지 못함<br><br>
				</p>
				<h4><img src="${cp }/image/icon4.png"> 유아기 행동 특성</h4><br>
				<p class="content_detail">
				- 유아기에는 젖을 잘 빨지 못하거나 먹는 동안 칭얼거리고 소량씩 여러 번 나누어서 먹여야 함<br>
				- 잠을 아주 적게 자거나 자더라도 자주 깨어남<br>
				- 떼를 많이 쓰고 투정을 부리고 안절부절 못하거나, 과도하게 손가락을 빨거나 머리를 박고 몸을 앞뒤로 흔드는 행동을 하기도 함.<br>
				- 기어다니기 시작하면 끊임없이 이리저리 헤집고 다니기도 하고 수면 및 수유 등 일과가 매우 불규칙적한 모습<br><br>
				</p>
				
				<br>
				<img src="${cp }/image/clinic_2_kang.png">
				<br><br><br><br>
			</div>		
		</div>

	</div>

</div>