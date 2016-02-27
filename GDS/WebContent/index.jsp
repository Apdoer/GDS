<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GDS</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link href="css/index.css" rel="stylesheet">
<script type="text/javascript" src="script/jquery.js"></script>

</head>
<body>

   <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">      
      <div class="container">
        <div class="navbar-header">
          
          <a class="navbar-brand" href="#">
          	<img alt="Brand" src="img/GDS_Logo.png">
          </a>
        </div>
        <div id="navbar" class="navbar-right collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#">GDS소개</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">프로그램소개 <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">프로그램1</a></li>
                <li><a href="#">프로그램2</a></li>
                <li><a href="#">프로그램3</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">보험상담</li>
                <li><a href="#">보험문의</a></li>
              </ul>
            </li>
            <li><a href="#about">소식지</a></li>
            <li><a href="#contact">커뮤니티</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <c:choose>
	<c:when test="${not empty contentPage}">
		<jsp:include page="${requestScope.contentPage }" />
	</c:when>
	<c:otherwise>
		<jsp:include page="/introduce.jsp"/>		
	</c:otherwise>
	</c:choose>

    
    
    <footer class="footer">
    	<div class="container">
    		<p>&copy; GDS 분당중앙센터 <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span><span class="phone">1577-3398</span></p>
    		<p></p>
    	</div>        
    </footer>

</body>
</html>