<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style type="text/css">
#introduce {margin-top: 70px;}
#introduce .left-side-bar{}
#introduce .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#introduce .left-side-bar ul li { border-bottom: 1px solid #eee; }
#introduce .left-side-bar ul li:last-child { border: 0px; }
#introduce .left-side-bar ul li a { display: inline-block; padding: 8px 16px; font-size: 1.2em; text-decoration: none; }
#introduce .big_blue {color: #2cabea; font-size: large; font-weight: bold;}

#introduce .a_link_clicked{
	font-weight: bold;
	color:#2cabea;
}
#introduce .a_link_unClicked{
	color: #aaa;
}

</style>
<script type="text/javascript">
$(document).ready(function () { 
	$(".a_link").click(function(){
		$(".a_link").removeClass('a_link_clicked');
		$(".a_link").addClass('a_link_unClicked');
		$(this).removeClass('a_link_unClicked');
		$(this).addClass('a_link_clicked');
		
	});
});

</script>

<div id="introduce" class="container">
		
		<!-- board left-side-bar -->
		<div class="col-md-3 col-lg-2 left-side-bar affix">
			<ul class="pull-right">
				<li><a class="a_link a_link_clicked" href="#">인사말</a></li>
				<li><a class="a_link a_link_unClicked" href="#2">추천사</a></li>
				<li><a class="a_link a_link_unClicked" href="#3">협력기관</a></li>
				<li><a class="a_link a_link_unClicked" href="#4">운영방식 및 시간</a></li>
				<li><a class="a_link a_link_unClicked" href="#5">오시는길</a></li>
			</ul>			
		</div>
	
      <div class="row">
        <div class="col-md-4">
        </div>
      
        <div class=" col-md-8 blog-main">
          
          <div class="blog-post">
			
            <h2 class="blog-post-title">인사말</h2>
            

            <blockquote><p>&nbsp;&nbsp;지디에스 분당중앙센터는 발달장애/학습장애로 어려움을 겪고 있는 “조금은 특별한” 우리 아이들을 위한 공간입니다. 
  			뇌를 활성화 하는 적절한 훈련, 감각 해소, 그리고 통합의학적  (Bio-med) 접근을 통해 우리 아이들의 문제는 충분히 개선될 수 있습니다.  부모의 마음으로 우리 아이들이 밝고 행복한 미래를 맞이할 수 있도록 최선을 다하겠습니다.
			</p></blockquote>
			<p align="right">지디에스 분당중앙센터장 <strong>김학기</strong></p>
			<br><div id="2"></div>
			<p class="blog-post-meta">김학기 센터장  약력</p>
			<p> - 서강대 경제학과 졸업<br>
				- 지디에스 분당중앙센터 센터장<br>
    			- 시지각/청지각 전문가 (토마티스 전문 자격 취득, 셀필드 국내 최다 이수자 배출)<br>
    			- 발달장애/학습장애 컨설턴트 
			</p>
			<br>
			
            <hr>
            <h2 class="blog-post-title">추천사</h2>
            <blockquote><p>&nbsp;&nbsp;우리 아이들의 감각적 문제를 정확히 진단하고, 가장 효율적 치료법을 제시할 수 있는 국내 유일의 공간이라 생각합니다. 더욱이 분당중앙센터내에 우리세상발달학교, 우리세상특수대안학교 개교를 통해 감각 해소를 위한 국내 최대 규모의 감각 통합실과 대형 트렘폴린 장을 완비하였습니다. 같은 아픔을 겪는 부모들과 대화하는 곳인 만큼 조금도 망설이지 말고 문을 두드려 주세요. 발달장애/학습장애 아동을 위한 해답, 분명이 있습니다.  
            </p></blockquote>
			<p align="right">태균맘 <strong>황순재 대표</strong></p>
			<br><div id="3"></div>
			<p class="blog-post-meta">태균맘 황순재 대표 약력</p>
			<p> - 고려대 사회학과 졸업<br>
				- 대구대 일반대학원 특수교육 석사<br>
    			- 우리세상 발달학교 , 우리세상 특수 대안학교 설립자<br>
    			- 다음까페 “행복한 자폐아” 운영자    			
			</p>
			<br>
			<hr>
            <h2 class="blog-post-title">협력기관</h2><div id="4"></div>
			<div style="">
			<img class="img-rounded" alt="" src="${cp }/image/pa_i.png" style="width: 100%; height: 100%;">
		  	</div>
			<br>
            <hr>
            <h2 class="blog-post-title">운영방식 및 시간</h2>
            <blockquote><p>본 센터는 예약제로 운영됨이 원칙이나, 언제든 개방되어 있습니다.<br>
			      미리 전화로 시간을 예약해 주시면 좀 더 편안하게 상담 및 치료가 가능합니다.<br>
			      센터장 및 태균맘 상담은 100% 무료 상담이니 부담 없이 연락바랍니다.
            </p></blockquote>
            <h3>상담예약전화</h3>
            <p>            	
            	<span class="big_blue">031-711-3546 / 010-3247-3535</span>
            </p>
            <h3>운영시간</h3> 
			<p><div id="5"></div>
				<span class="big_blue">월~금 : 오전 9시 ~ 오후 6시</span><br>
				<span class="big_blue">토 : 오전 10시 ~ 오후 3시</span><br>
				<br>
				사전에 예약된 경우는 야간이나 주말에도 센터 이용 및 상담 가능합니다.<br>
				고압 산소 치료의 경우 365일 24시간 개방 체제로 언제든지 자유롭게 이용가능합니다.</p>
			<br>
            <hr>
            <h2 class="blog-post-title">오시는길</h2>            
            <div>
<!--            <h3>도로명주소</h3>
			 <p>경기도 성남시 분당구 동막로 245번길 12 1층 지디에스 분당중앙센터</p>
  			<h3>지번주소</h3>
  			<p>경기도 성남시 분당구 동원동 186번지</p> -->
			<img class="img-rounded" alt="" src="${cp}/image/map_2.png" style="width: 100%; height: 100%;">
			
			<img class="img-rounded" alt="" src="${cp}/image/map_3.png" style="width: 100%; height: 100%;">
		  	</div>

		  	
			</div><!-- /.blog-post -->

        </div><!-- /.blog-main -->

      </div><!-- /.row -->

    </div><!-- /.container -->