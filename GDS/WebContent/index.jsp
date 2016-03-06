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
<link rel="stylesheet" href="${cp}/css/index.css">
<script type="text/javascript" src="${cp}/script/jquery.js"></script>
<script type="text/javascript" src="${cp}/script/bootstrap.js"></script>

</head>
<body>

   <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">      
      <div class="container">
        <div class="navbar-header">
          
          <a class="navbar-brand" href="${cp }/index.jsp">
          	<img alt="Brand" src="${cp}/img/GDS_Logo.png">
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
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">소식지 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li><a href="${cp}/blog/selectBlogAll.do">별 헤는 밤</a></li>
                <li><a href="${cp}/board/enter.do">공지사항</a></li>
                <li><a href="${cp}/qna/enter.do">온라인 문의</a></li>
              </ul>
            </li>
            <li><a href="${cp}/counsel.do">상담신청</a>
            </li>
            <li><a href="#"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span><span class="phone"> 031-711-3546</span></a>
            </li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <c:choose>
	<c:when test="${not empty contentPage}">
		<jsp:include page="${requestScope.contentPage }" />
	</c:when>
	<c:otherwise>
		<jsp:include page="/home.jsp"/>		
	</c:otherwise>
	</c:choose>

    
    
    <footer class="footer">
    	<div class="container">
    		<p>&copy; GDS 분당중앙센터</p>
    		<p></p>
    	</div>        
    </footer>

</body>
</html>