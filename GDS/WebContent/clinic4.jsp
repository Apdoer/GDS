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
	font-size: 1.2em;
	text-decoration: none;
}
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
				<li><a class="a_link_unClicked" href="${cp }/clinic2.do">주의력 결핍/<br>과잉행동 장애</a></li>
				<li><a class="a_link_unClicked" href="${cp }/clinic3.do">학습장애</a></li>
				<li><a class="a_link_clicked" href="${cp }/clinic4.do">사회성부족</a></li>
			</ul>			
	</div>
	<div class="row">

		<div class="col-md-8 col-md-offset-3">
			<div>
				<br><br>
				<div class="title"><h1>사회성부족</h1></div>
				<div class="title_detail"><span>발달장애와 관련된 질환들을<br>과학적으로 분석 대처할 수 있습니다.</span>	</div>
				<br><br>
				<hr><br>
				
				<h4><img src="${cp }/image/icon4.png"> 사회성부족이란?</h4><br>
				<p class="content_detail">사회성은 누군가가 타인이나 기타 다른 주변 환경과 “관계”를 형성해 나가면서, 타인과 원만하게
				상호작용하는 능력, 다양한 사람과 긍정적인 관계를 형성하는 능력, 상황에 맞는 행동을 하는 능력을 말합니다. 그러나 특히
				학령기 혹은 유아기에 사회성이 부족하면 친구들과 어울리기 어렵고 다소 상황에 맞지 않는 상황 등으로 인해 왕따나, 자존감
				추락 등으로 이어질 수도 있으므로 관리가 필요합니다.<br><br></p>
				
				<img src="${cp }/image/clinic4_check.png" style="margin-left: 10%;margin-bottom: 5%;">
				
				<h4><img src="${cp }/image/icon4.png"> 사회성을 회복하려면?</h4><br>
				<p class="content_detail">
				사회성은 아이의 발달단계에 있어 상위
				레벨의 기능입니다. 이에 기초 공사에 해당되는 전정기관의 회복이 선행되지 않고서는 사회성 발달을 기대하기 어렵습니다.
				사회성 발달과 관계하는 감각 기관의 회복을 기본으로 훈련하면서, 교육적인 부분을 가미할때 효과는 배가 될 것입니다.
				<br><br><br><br>
				</p>
				
				
			</div>		
		</div>

	</div>

</div>