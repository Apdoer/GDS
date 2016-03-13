<%@ page language ="java" contentType ="text/html; charset=UTF-8"
    pageEncoding= "UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<script type= "text/javascript" src= "${cp}/se2/js/HuskyEZCreator.js" charset= "utf-8"></script>
<script type= "text/javascript" >
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById[ "ir1" ].exec("UPDATE_CONTENTS_FIELD" , []);

    // 에디터의 내용에 대한 값 검증은 이곳에서
    /* alert(document.getElementById( "ir1" ).value); */
    var title = document.getElementById( "title" ).value;
    var content = document.getElementById( "ir1" ).value;
    alert(content);
    window.location.href="insertBlog.do?title="+title+"&content="+content;
}
</script>
<style type="text/css">
#blog_view {margin-top: 120px;}

</style>


<div id="#blog_view" class="container">
	<div class="content">
	<!--제목 시작 -->
	<div class="input-group" style="float:left; width: 680px;">
	  <span class="input-group-addon" id="basic-addon1">제목</span>
	  <input type="text" id="title" class="form-control" placeholder="제목을 입력해 주세요" aria-describedby="basic-addon1">
	</div>
	<!--제목 끝-->
	<br> <br>
	
	<!--내용 시작 -->
	 <textarea name= "ir1" id="ir1" rows= "20" cols= "90" >
	</textarea>
	<!--내용 끝-->
	
	<br> <br>
	  <button type="button" class="btn btn-info pull-right" onclick="submitContents(this)" style="text-align: center;">등록</button>
	  <button type="button" class="btn btn-info pull-right" style="text-align: center;">취소</button>
	
	</div>
	
</div>

<script type= "text/javascript" >
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1" ,
    sSkinURI: "${cp}/se2/SmartEditor2Skin.html" ,
    fCreator: "createSEditor2"
});
</script>
