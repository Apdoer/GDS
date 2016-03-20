<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style type="text/css">
#program_deasa h2{
	font-weight: bold;
}
/* #program_deasa {
	margin-top: 70px;
}

#program_deasa .left-side-bar ul {
	list-style: none;
	margin: 16px 0px 0px 0px;
	padding: 0px;
	width: 75%;
}

#program_deasa .left-side-bar ul li {
	border-bottom: 1px solid #eee;
}

#program_deasa .left-side-bar ul li:last-child {
	border: 0px;
}

#program_deasa .left-side-bar ul li a {
	display: inline-block;
	padding: 8px 16px;
	font-size: 1.2em;
	text-decoration: none;
}

#program_deasa .title h1 {
	font-weight: 600;
} */

/* #program_deasa .title{
	display: inline-block;
}
#program_deasa .title_detail{
	display: inline-block;
	color: #ABA7A7;
	margin-left: 5px;
}
#program_deasa hr {border: 2px solid #847373;}
#program_deasa p {line-height: 200%;  color: #808080; margin-top:30px;}
#program_deasa .a_link_clicked{
	font-weight: bold;
	color:#2cabea;
}
#program_deasa .a_link_unClicked{
	color: #aaa;
} */
</style>


<div id="program_deasa" class="container">

	<div class="col-md-3 col-lg-2 left-side-bar affix">
		<ul class="pull-left">
			<li><a class="a_link_unClicked" href="${cp}/program_deasa.do">대사검사</a></li>
			<li><a class="a_link_unClicked" href="${cp}/program_goap.do">고압산소치료</a></li>
			<li><a class="a_link_clicked" href="${cp}/program_chunggigac.do">청지각프로그램</a></li>
			<li><a class="a_link_unClicked" href="${cp}/program_sigigac.do">시지각프로그램</a></li>
		</ul>

	</div>

	<div class="row">
		<div class=" col-md-8 col-md-offset-3 content">
			<div>

				<div class="title-horizontal">
					<h1>청지각 프로그램</h1>
					<div class="title-detail">
						발달장애와 관련된 질환들을<br>과학적으로 분석 대처할 수 있습니다.
					</div>
				</div>
				<hr>
				<div class="detail">
					<h2 class="title" style="margin-top: 30px;">토마티스</h2>
					<p>토마티스 훈련은 직접적인 공기 전도(공기를 통한 소리전달)와 골 전도(두피를 통한 진동 전달) 방식을
						이용하여, 어떤 주파수가 내 귀를 거쳐가도 나의 뇌가 그것을 감지하는데 어려움이 없게 하기 위한 가장 효과적인
						훈련입니다. 지디에스 분당중앙센터는 한국/미국에서 토마티스 교육을 이수한 전문가 2명이 국내 최대 수준의 임상 경험을
						바탕으로 아이의 감각적 문제를 정확히 파악하고, 그에 따른 맞춤형 프로토콜을 제공합니다.</p>
					<div style="padding: 10px; text-align: center;">
						<img src="image/tomatis_1.png">
					</div>
					<div style="padding: 10px; text-align: center;">
						<img src="image/daesang_check.png">
					</div>
					<img src="image/effect_01.png" style="width: 100%; margin-top: 10px;margin-bottom: 10px;">


				</div>
				<hr>
				
				<div class="detail">
				<h2 class="title" style="margin-top: 30px;">iLs</h2>
				<p>iLs 청지각 프로그램은 청지각 처리 뇌신경회로가 자연스럽게 닦여지도록 유도하는데 있습니다. 이런 목적으로
					진행하는 이유는 iLs 프로그램은 감각통합적 차원의 훈련을 목표로 하기 때문입니다. 청지각 감각은 반드시 시지각이나
					동작성과 함께 동시에 작동이 되어야 합니다.</p>
				<p>예를 들어, 상대방의 눈을 응시하면서 이야기를 듣는다든지, 말을 한다든지, 동작을 하더라도 정확히 동작에 눈을
					맞추고 해야 한다든지 하는 감각통합은 우리 아이들이 발달장애를 극복하기 위한 또 하나의 과제입니다.</p>
				<p>이를 도와주기 위한 프로그램이 모두 포함되어 있는 것이 iLs 훈련 프로그램의 특징이며, 발성과 발음 부분까지
					포함되어 있습니다. 제대로 된 발성과 발음이 되기 위해서는 청각적 오류를 최소화해야 되기 때문입니다.</p>
				<p>이런 면에서 보면 iLs 프로그램은 1년 내내 진행할 수 있는 청지각 훈련부터 시작해서 감각통합적 내용,
					언어훈련까지 총망라 되어 있습니다. </p>
				</div>
			</div>
			
			<div class="row">
				<img src="image/p_01.png" class="col-md-4 col-lg-4">
				<img src="image/p_02.png" class="col-md-4 col-lg-4">
				<img src="image/p_03.png" class="col-md-4 col-lg-4">
			</div>
			
			<a href="${cp}/counsel.do">
				<img src="image/banner_chunggigac.png" style="width: 100%; margin-top: 32px; margin-bottom: 16px;">
			</a>

		</div>
		<!-- /.container -->
	</div>
</div>