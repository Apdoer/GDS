<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지디에스분당중앙센터</title>
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
          
          <a class="navbar-brand" href="${cp}">
          	<span><img alt="Brand" src="${cp}/image/logo_c.png">
          	<img src="${cp}/image/tomatis.png"></span>
          </a>
        </div>
        <div id="navbar" class="navbar-right collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="${cp}/introduce.do">센터소개</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">뇌신경/감각 클리닉 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li><a href="${cp}/clinic1.do">자폐 스펙트럼 장애</a></li>
                <li><a href="${cp}/clinic2.do">주의력 결핍/과잉행동장애</a></li>
                <li><a href="${cp}/clinic3.do">학습장애</a></li>
                <li><a href="${cp}/clinic4.do">사회성 부족</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">프로그램<span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <!-- <li class="dropdown-header">개선솔루션</li> -->
                <li><a href="${cp}/program_deasa.do">대사검사</a></li>
                <li><a href="${cp}/program_goap.do">고압산소치료</a></li>
                <li><a href="${cp}/program_chunggigac.do">청지각프로그램</a></li>
                <li><a href="${cp}/program_sigigac.do">시지각프로그램</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li><a href="${cp}/blog/selectBlogAll.do">별 헤는 밤</a></li>
                <li><a href="${cp}/board/enter.do">공지사항</a></li>
                <li><a href="${cp}/qna/enter.do">온라인 문의</a></li>
              </ul>
            </li>
            <li><a href="${cp}/counsel.do">상담신청</a>
            </li>
            <li class="tel_no_top"><a href="${cp}/counsel.do"><span class="phone"><img src="${cp }/image/icon_1.png"> <img src="${cp }/image/tel_no.png"></span></a>
            </li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <div class="contentPage">
    <c:choose>
	<c:when test="${not empty contentPage}">
		<jsp:include page="${requestScope.contentPage }" />
	</c:when>
	<c:otherwise>
		<jsp:include page="/home.jsp"/>		
	</c:otherwise>
	</c:choose>
	</div>
    
    
    <footer class="footer">
    	<div class="container">
    		<div class="row">
    		<div class="in_line col-md-2 col-md-offset-1"><img class="footer_logo" src="${cp }/image/logo_g.png"></div>
    		<div class="in_line footer_info col-md-8 col-md-offset-1">
    			<p><br>경기도 성남시 분당구 동막로 245번길 12 1층 지디에스 분당중앙센터<br>
				       대표&nbsp;&nbsp;&nbsp;&nbsp;김학기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사업자등록번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;144-02-75431<br>
                   TEL&nbsp;&nbsp;&nbsp;031-711-3546&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FAX&nbsp;&nbsp;&nbsp;&nbsp;031-5171-3546&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gdsdream@naver.com</p>
    		</div>
    		</div>
    	</div>        
    </footer>

</body>
</html>