<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style type="text/css">
#program_deasa .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#program_deasa .left-side-bar ul li { border-bottom: 1px solid #eee; }
#program_deasa .left-side-bar ul li:last-child { border: 0px; }
#program_deasa .left-side-bar ul li a { display: inline-block; padding: 8px 16px; font-size: 1.2em; text-decoration: none; }
#program_deasa .title h1{
	font-weight: 600;
}

#program_deasa .a_link_clicked{
	font-weight: bold;
	color:#2cabea;
}
#program_deasa .a_link_unClicked{
	color: #aaa;
}
</style>
<div id="program_deasa" class="container">

	<!-- board left-side-bar -->
	<div class="col-md-3 col-lg-2 left-side-bar affix">
		<ul class="pull-left">
			<li><a class="a_link_clicked" href="${cp}/program_deasa.do">대사검사</a></li>
			<li><a class="a_link_unClicked" href="${cp}/program_goap.do">고압산소치료</a></li>
			<li><a class="a_link_unClicked"
				href="${cp}/program_chunggigac.do">청지각프로그램</a></li>
			<li><a class="a_link_unClicked" href="${cp}/program_sigigac.do">시지각프로그램</a></li>
		</ul>
	</div>

	<div class="row">
		<div class=" col-md-8 col-md-offset-3 content">
				
			<div class="title-horizontal">
				<h1>대사 검사</h1>
				<div class="title-detail">발달장애와 관련된 질환들을<br>과학적으로 분석 대처할 수 있습니다.</div>	
			</div>
			<div class="detail">
				<div class="detail row">
					<div class="col-md-7 col-lg-6">
						미국 Great Plains Laboratory 연구소는 광범위한 정신적, 대사적 장애(자폐를 포함하여 인지발달장애, 다운증후군, ADHD, 우울증 등 정신질환 까지)를 갖고 있는 성인과 아동을 돕기 위한 생화학 연구소입니다. 
					</div>
					<div class="col-md-5 col-lg-6">
						<img src="image/deasa1.png" style="width: 100%;">
					</div>
				</div>
				<div style="margin-bottom: 8px;">
					건강대사이상과 생의학연구 분야에서 상당한 권위를 가진 윌리엄 쇼 박사가 설립했고, 운영하고 있습니다. Great Plains Laboratory는 발달 장애와 관련된 질환들을  과학적으로 원인을 분석 대처하고, 테스트 할 수 있는 기반을 마련해 놓고 있습니다. 미국에서는 공식적으로 의사의 도움을 받아 테스트가 진행되고 있으며, 전 세계적으로 몇개의 지사가 있어 많은 국가의 사람들에게 도움을 주고 있습니다. 특히 유기산 검사는 타 연구소에서  따라올 수 없는 독보적 기술과 특허를 갖고 대사건강의 가장 정확한 지표를 제공합니다.
				</div>
			</div>
			<hr>
			
			<h2>유기산 검사</h2>
			<div class="detail">
				유기산 테스트(Organic Acids Test)는 인체가 소변을 통해 모든대사활동 후 대사물질을 흘려 보내는 것을 토대로 신진대사와 관련된 간단하지만 소중한 정보를 제공합니다. 신진대사 후에 흘려진 유기산 성분들은 인체 내 세포의 활동에 대한 결과, 음식에 대한 소화결과 그리고 위장의 신진대사로 인한 부산물이라고 할 수 있습니다. 어느 부분에선, 소변에 있는 유기산 성분은 유독성과 같은 표시물의 암시를 나타내기도 하며, 효모균이나 위장의 박테리아 대사들의 수준까지 검사되며 평균 사람의 대사량과 비교될 수 있는데 이는 효모균이나 박테리아의 확동에 대한 전반적인 상황까지 체크하게 됩니다. 전체 76개의 유기산 분석함으로써 비타민과 호르몬의 신진대사, 에너지 레벨, 장벽의 보전성, 신경 전달 그리고 근육의 기능까지도 측정이 가능한 놀라운 검사입니다.
				<div style="padding: 20px; text-align: center;">
					<img src="image/im_5.png">
				</div>
				<img src="image/daesang_01.png" style="width: 100%;">
			</div>
			
			<h2>중금속 검사</h2>
			<div class="detail">
				머리카락은 유독성 금속들인 납, 알루미늄, 슨은 등을 검출하는데 탁원한 샘플입니다. 납은 도로변의 흙에서 발견될 수도 있고 오래된 집들의 페인트에도 들어있으며 흙이나 페인트 조각들을 먹는 아이들은 납 수치가 독성까지 될 수 있습니다. 카드뮴은 배터리, 철 띠를 두른 타이어들 그리고 플라스틱에 사용됩니다. 음식을 덮는 플라스틱은 카드뮴 원천이 될 수 있고 담배연기에서도 발견됩니다. 수은은 배터리, 치과용 아말감, 청소기 펌프, 밸브, 봉인들에서 사용됩니다. 사용 후 버려지는 치과용 충전제로부터 나오는 높은 양의 수은은 우리 주변에서 흔히 볼 수 있는 유독성 금속입니다. 비소는 해산물에 많이 들어있으며, 또한 비소가 함유 된 음식을 먹인 동물들에서도 발견됩니다.
				<div style="padding: 20px; text-align: center;">
					<img src="image/im_6.png">
				</div>
				<img src="image/daesang_02.png" style="width: 100%;">
			</div>

			<hr>
			
			<div>
				<p><strong>이 외에도 음식 알러지검사, 글루텐/카제인 검사, 아미노산 검사 등도 진행 가능합니다.<br>New Beginnings사 등 발달장애 전문 영양보충제 회사와의 제휴를 통해 맞춤형 기능성 보충제 구매가 가능합니다.</strong></p>
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</div>
</div>
