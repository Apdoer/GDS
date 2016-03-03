<%@ page language ="java" contentType ="text/html; charset=UTF-8"
    pageEncoding= "UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<! DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv= "Content-Type" content= "text/html; charset=UTF-8">
<title>Insert title here</title>
<script type= "text/javascript" src= "se2/js/HuskyEZCreator.js" charset= "utf-8"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style type="text/css">
body, table, td, input, textarea { font:12px; font-family: 'Nanum Gothic', serif; color:#555; }


</style>

</head>
<body>
<div id="admin">
	<form action="admin.do">
	<!--카테고리 시작 -->
	<div class="container" style="width: 150px; float:left; padding:0 10 0 0;">
		<select id="category" class="form-control">
			<option>카테고리</option>
			<form:form name="form" commandName="Task"
				action="/getCategoryTaskList">
				<c:forEach items="${categoryList}" var="category">
					<option>${category.name}</option>
				</c:forEach>
			</form:form>
		</select>
	</div>
	<!--카테고리 끝 -->
	
	<!--제목 시작 -->
	<div class="input-group" style="float:left; width: 680px;">
	  <span class="input-group-addon" id="basic-addon1">제목</span>
	  <input type="text" id="title" class="form-control" placeholder="제목을 입력해 주세요" aria-describedby="basic-addon1">
	</div>
	<!--제목 끝-->
	<br> </br>
	<p>내용 시작한다. ${blogList[0].content} </p>
	<br> </br>
	</form>
</div>
</body>
</html>
