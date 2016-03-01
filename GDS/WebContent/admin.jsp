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

<script type= "text/javascript" >
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById[ "ir1" ].exec("UPDATE_CONTENTS_FIELD" , []);

    // 에디터의 내용에 대한 값 검증은 이곳에서
    /* alert(document.getElementById( "ir1" ).value); */
    var title = document.getElementById( "title" ).value;
    var content = document.getElementById( "ir1" ).value;
    var category = document.getElementById( "category" ).value;
    window.location.href="insertBlog.do?title="+title+"&content="+content+"&category="+category;
  /*   try {
        elClickedObj.form.submit();
    } catch(e) {} */
}
</script>
</head>
<body>

<form action="admin.do">

<!--카테고리 시작 -->
<div class="container" style="width: 150px; float:left; padding:0 10 0 0;">
	<select id="category" class="form-control">
		<option>카테고리</option>
		<form:form name="form" commandName="Task"
			action="/getCategoryTaskList">
			<c:forEach items="${categoryList}" var="category">
				<option>${category.categoryName}</option>
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
<br/>


<textarea name= "ir1" id= "ir1" rows= "20" cols= "115" >내용을 입력해 주세요
</textarea>
<br> </br>
<div class="btn-group" role="group" aria-label="..." >
  <button type="button" class="btn btn-default" onclick="submitContents(this)" style="text-align: center;">등록</button>
  <button type="button" class="btn btn-default" style="text-align: center;">취소</button>
</div>
</form>
<!-- <p>
     <input type= "button" onclick= "pasteHTML();" value="본문에 내용 넣기" />
     <input type= "button" onclick= "showHTML();" value="본문 내용 가져오기" />
     <input type= "button" onclick= "submitContents(this);" value="서버로 내용 전송" />
     <input type= "button" onclick= "setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" />
</p> -->
</body>
<script type= "text/javascript" >
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1" ,
    sSkinURI: "se2/SmartEditor2Skin.html" ,
    fCreator: "createSEditor2"
});
</script>
</html>
