<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<style type="text/css">
#home{
	margin-top:30px;
}
#home .carousel-control.left{
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, .0001) 100%);
}
#home .carousel-control.right{
	background-image: -webkit-linear-gradient(right, rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, .0001) 100%);
}
#home .bar_container{
	width:100%; min-height:121px; background-color: rgba(85, 85, 85, 1); font-size: 0; margin:0 auto;
}
#home .symtom_container{
	width:80%; margin:0 auto;
}
#home .symtom{
	border:0; margin:0; padding:0; display: inline-block; width:25%; min-height:121px;
}
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
</style>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div id="home">
    
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${cp }/image/ba_1.png" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="${cp }/image/ba_2.png" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="${cp }/image/ba_3.png" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="${cp }/image/ba_4.png" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="${cp }/image/ba_5.png" alt="...">
      <div class="carousel-caption">
      </div>
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
    	<div>
	    	<div class="symtom_container">
	    		<div class="symtom symtom1"></div>
	    		<div class="symtom symtom2"></div>
	    		<div class="symtom symtom3"></div>
	    		<div class="symtom symtom4"></div>
	    	</div>
    	</div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      
      	<div class="col-md-4">
          <h2>공지/이벤트</h2>
          <p>&nbsp;&nbsp;대사검사 무료 시행 이벤트를 진행합니다. 선착순 5명까지 신청 받습니다. 대사검사는...</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>소식지</h2>
          <p>&nbsp;&nbsp;고압 산소 치료는 선택이 아닌 필수입니다. 우리가 바깥 세상의 정보를 받아들이는 감각을 담당하고 정보처리를 하는 뇌 부위는 각기 다르며, 이를 연결하는 것은 뇌 속에 얽혀 있는 신경세포들입니다. 그렇다 보니 뇌손상 때문에 특정 감각기관을 담당하는 부위 혹은 그 부위를 연결하는 신경에 손상을 갖고 있는 발달장애의 경우 특정 감각이 둔하거나 예민해지는 문제를 동반... 
          </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>예시레이아웃</h2>
          <p>예시 글입니다...</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        
      </div>

      <hr>
    </div>
</div>