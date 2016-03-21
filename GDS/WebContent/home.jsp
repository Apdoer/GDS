<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<style type="text/css">

#home .carousel-control.left {
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0) 0,
		rgba(0, 0, 0, .0001) 100%);
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0) 0,
		rgba(0, 0, 0, .0001) 100%);
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, 0)),
		to(rgba(0, 0, 0, .0001)));
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0) 0,
		rgba(0, 0, 0, .0001) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000',
		endColorstr='#00000000', GradientType=1);
	background-repeat: repeat-x
}

#home .carousel-control.right {
	right: 0;
	left: auto;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .0001) 0,   rgba(0, 0, 0, 0) 100%);
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, .0001) 0,
		rgba(0, 0, 0, 0) 100%);
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .0001)),
		to(rgba(0, 0, 0, 0)));
	background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 0,
		rgba(0, 0, 0, 0) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000',
		endColorstr='#00000000', GradientType=1);
	background-repeat: repeat-x
}

#home .bar_container{
	width:100%; background-color: rgba(85, 85, 85, 1); font-size: 0; margin:0 auto;
}
#home .symtom_container{
	width:100%; margin:0 auto; cursor: pointer;
}
#home .symtom_container > img {
	width: 25%;
}
/* 
#home .symtom{
	border:0; 
	margin:0; 
	padding:0; 
	display: inline-block; 
	width:321px; 
	min-height:121px;
}
*/

/* 
#home .symtom1{
	background:URL('${cp}/image/m_b1.png');
}
#home .symtom2{
	background:URL('${cp}/image/m_b2.png');
}
#home .symtom3{
	background:URL('${cp}/image/m_b3.png');
}
#home .symtom4{
	background:URL('${cp}/image/m_b4.png');
}
 */

#home .carousel-inner img{
	width:100%;
}
#home .info_container{
	/* width:70%; */ 
	margin:0 auto;
}

#home .hr_margin_top_0{
	margin-top: 0;
}

#home .table>tbody>tr>td{
	border-top: 0;
}

</style>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div id="home">
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			<li data-target="#carousel-example-generic" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="${cp }/image/ba_1.png" alt="...">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${cp }/image/ba_2.png" alt="...">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${cp }/image/ba_3.png" alt="...">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${cp }/image/ba_4.png" alt="...">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${cp }/image/ba_5.png" alt="...">
				<div class="carousel-caption"></div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<%-- <span><img class="" src="${cp }/image/m_e2.png" width="27px" height="76px" aria-hidden="true"></span> --%>
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="bar_container">
		<div class="container">
			<div class="symtom_container">
				<img src="${cp}/image/m_b1.png" alt="자폐스펙트럼 장애">
				<img src="${cp}/image/m_b2.png" alt="주의력 결핍/과잉행동장애">
				<img src="${cp}/image/m_b3.png" alt="학습장애">
				<img src="${cp}/image/m_b4.png" alt="사회성 부족">
				<!-- 
				<div class="symtom symtom1"></div>
				<div class="symtom symtom2"></div>
				<div class="symtom symtom3"></div>
				<div class="symtom symtom4"></div>
				 -->
			</div>
		</div>
	</div>
	<div class="info_container">
		<div class="container">
			<!-- Example row of columns -->
			<div class="row" id="home-content">
				<!-- Loading home content via ajax -->
			</div>
			<hr>
		</div>
	</div>
</div>


<script type="text/javascript">
	$(document).ready(function() {

		$('.symtom_container img:eq(0)').click(function() { location.href = "${cp}/clinic1.do"; });
		$('.symtom_container img:eq(1)').click(function() { location.href = "${cp}/clinic2.do"; });
		$('.symtom_container img:eq(2)').click(function() { location.href = "${cp}/clinic3.do"; });
		$('.symtom_container img:eq(3)').click(function() { location.href = "${cp}/clinic4.do"; });
		
		/* 
		$(".symtom1").click(function() {
			location.href = "${cp}/clinic1.do";
		});
		$(".symtom2").click(function() {
			location.href = "${cp}/clinic2.do";
		});
		$(".symtom3").click(function() {
			location.href = "${cp}/clinic3.do";
		});
		$(".symtom4").click(function() {
			location.href = "${cp}/clinic4.do";
		});
		 */
		 
		$.ajax({
			url : '${cp}/getHomeContent.ajax'
		}).done(function(data) {
			$('#home-content').html(data);
		}).error(function(error) {
			alert(error);
		});
	});
</script>