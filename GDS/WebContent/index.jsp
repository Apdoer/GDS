<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, height=device-height">
<title>지디에스분당중앙센터</title>
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="${cp}/css/bootstrap.css">
<link rel="stylesheet" href="${cp}/css/bootstrap-theme.css">
<link rel="stylesheet" href="//cdn.rawgit.com/hiun/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" href="${cp}/css/index.css">
<script type="text/javascript" src="${cp}/script/jquery.js"></script>
<script type="text/javascript" src="${cp}/script/bootstrap.js"></script>
</head>
<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- <button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-main-header" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button> -->
				<a class="navbar-brand" href="http://gdsdream.com/"><span>
					<img alt="Brand" src="${cp}/image/logo_c.png">
					<img src="${cp}/image/tomatis.png">
				</span></a>
			</div>
			
			<!-- collapsable navbar -->
			<div class="navbar-right collapse navbar-collapse" id="navbar-main-header">
				<ul class="nav navbar-nav">
					<li>
						<a href="${cp}/introduce.do">센터소개</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							뇌신경/감각 클리닉
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu dropdown-menu-left" role="menu">
							<li><a href="${cp}/clinic1.do">자폐 스펙트럼 장애</a></li>
							<li><a href="${cp}/clinic2.do">주의력 결핍/과잉행동장애</a></li>
							<li><a href="${cp}/clinic3.do">학습장애</a></li>
							<li><a href="${cp}/clinic4.do">사회성 부족</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							프로그램<span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left" role="menu">
							<li><a href="${cp}/program_deasa.do">대사검사</a></li>
							<li><a href="${cp}/program_goap.do">고압산소치료</a></li>
							<li><a href="${cp}/program_chunggigac.do">청지각프로그램</a></li>
							<li><a href="${cp}/program_sigigac.do">시지각프로그램</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							커뮤니티 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu dropdown-menu-left" role="menu">
							<li><a href="${cp}/blog/selectBlogAll.do">별 헤는 밤</a></li>
							<li><a href="${cp}/board/enter.do">공지사항</a></li>
							<li><a href="${cp}/qna/enter.do">온라인 문의</a></li>
						</ul>
					</li>
					<li>
						<a href="${cp}/counsel.do">
							상담신청
							<span class="phone-number-collapsed">&nbsp;(031-711-3546 / 010-3247-3535)</span>
						</a>
					</li>
					<li class="tel_no_top">
						<a href="${cp}/counsel.do"><span class="phone">
							<img src="${cp }/image/icon_1.png">
							<img src="${cp }/image/tel_no.png">
						</span></a>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	
	<%-- <nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-main-header" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="http://gdsdream.com/"><span>
					<img alt="Brand" src="${cp}/image/logo_c.png">
					<img src="${cp}/image/tomatis.png">
				</span></a>
			</div>
			
			<!-- collapsable navbar -->
			<div class="navbar-right collapse navbar-collapse" id="navbar-main-header">
				<ul class="nav navbar-nav">
					<li>
						<a href="${cp}/introduce.do">센터소개</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							뇌신경/감각 클리닉
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu dropdown-menu-left" role="menu">
							<li><a href="${cp}/clinic1.do">자폐 스펙트럼 장애</a></li>
							<li><a href="${cp}/clinic2.do">주의력 결핍/과잉행동장애</a></li>
							<li><a href="${cp}/clinic3.do">학습장애</a></li>
							<li><a href="${cp}/clinic4.do">사회성 부족</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							프로그램<span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left" role="menu">
							<li><a href="${cp}/program_deasa.do">대사검사</a></li>
							<li><a href="${cp}/program_goap.do">고압산소치료</a></li>
							<li><a href="${cp}/program_chunggigac.do">청지각프로그램</a></li>
							<li><a href="${cp}/program_sigigac.do">시지각프로그램</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							커뮤니티 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu dropdown-menu-left" role="menu">
							<li><a href="${cp}/blog/selectBlogAll.do">별 헤는 밤</a></li>
							<li><a href="${cp}/board/enter.do">공지사항</a></li>
							<li><a href="${cp}/qna/enter.do">온라인 문의</a></li>
						</ul>
					</li>
					<li>
						<a href="${cp}/counsel.do">
							상담신청
							<span class="phone-number-collapsed">&nbsp;(031-711-3546 / 010-3247-3535)</span>
						</a>
					</li>
					<li class="tel_no_top">
						<a href="${cp}/counsel.do"><span class="phone">
							<img src="${cp }/image/icon_1.png">
							<img src="${cp }/image/tel_no.png">
						</span></a>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav> --%>

	<div class="contentPage">
		<c:choose>
			<c:when test="${not empty contentPage}">
				<jsp:include page="${requestScope.contentPage }" />
			</c:when>
			<c:otherwise>
				<jsp:include page="/home.jsp" />
			</c:otherwise>
		</c:choose>
	</div>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="in_line col-md-2 col-md-offset-1">
					<img class="footer-logo" src="${cp }/image/logo_g.png">
				</div>
				<div class="in_line footer_info col-md-8">
					<dl class="dl-horizontal">
						<dt>사업장 소재지</dt>
						<dd>경기도 성남시 분당구 동막로 245번길 12 1층 지디에스 분당중앙센터</dd>
					</dl>
					<dl class="dl-horizontal">
						<dt>대표자명</dt>
						<dd>김학기</dd>
					</dl>
					<dl class="dl-horizontal">
						<dt>사업자등록번호</dt>
						<dd>144-02-75431</dd>
					</dl>
					<dl class="dl-horizontal">
						<dt>TEL</dt>
						<dd>031-711-3546</dd>
					</dl>					
					<dl class="dl-horizontal">
						<dt>FAX</dt>
						<dd>031-5171-3546</dd>
					</dl>					
					<dl class="dl-horizontal">
						<dt>E-mail</dt>
						<dd>gdsdream@naver.com</dd>
					</dl>					
				</div>
			</div>
		</div>
	</footer>
<script type="text/javascript">
	window.onload=function(){
		
		var rv = -1;
		var agent = navigator.userAgent.toLowerCase(); 
		var re = new RegExp("trident/([0-9]{1,}[\.0-9]{0,})");
		if(re.exec(agent) != null)
			rv = parseFloat(RegExp.$1);
		
	    if(rv == "4" || rv == "3"){
	    	location.href = "${cp}/error.jsp"
	    }
	}
</script>
</body>
</html>