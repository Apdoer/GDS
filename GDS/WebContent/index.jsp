<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GDS</title>
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
          
          <a class="navbar-brand" href="#">
          	<img alt="Brand" src="${cp}/img/GDS_Logo.png">
          </a>
        </div>
        <div id="navbar" class="navbar-right collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">GDS소개 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li><a href="#">인사말</a></li>
                <li><a href="#">오시는길</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">증상소개 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li><a href="#">발달장애</a></li>
                <li><a href="#">학습장애</a></li>
                <li><a href="#">ADHD</a></li>
                <li><a href="#">자폐</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">프로그램소개 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li class="dropdown-header">개선솔루션</li>
                <li><a href="#">고압산소치료</a></li>
                <li><a href="#">대사검사</a></li>
                <li><a href="#">청지각프로그램</a></li>
                <li><a href="#">시지각프로그램</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">보험상담</li>
                <li><a href="#">보험문의</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">소식지 <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left" role="menu">
                <li><a href="#">좋은정보</a></li>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">QNA</a></li>
                <li><a href="#">이벤트</a></li>
              </ul>
            </li>
            <li><a href="${pageContext.request.contextPath}/counsel.do">상담신청</a>
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