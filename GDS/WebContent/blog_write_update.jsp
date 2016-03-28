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
    
    var id =  ${blogList[0].id};
	var title = document.getElementById("title").value;
	var content = document.getElementById("ir1").value;
	
	$.ajax({
		url: '${cp}/blog/updateBlog.ajax',
		method: 'POST',
		data: {
			id: id,
			title: title,
			content: content
		}
	}).done(function(data) {
		location.href = '${cp}/admin/blog/enter.do';
	}).fail(function(error) {
		alert(error);
	});
}
</script>

<style type="text/css">
#blog_view {margin-top: 170px;}

#blog_view .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#blog_view .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

</style>

<div id="#blog_view" style="margin-top: 70px; ">
	<form>
	
	<!--제목 시작 -->
	<div class="input-group" style="float:left; width: 680px;">
	  <span class="input-group-addon" id="basic-addon1">제목</span>
	  <input type="text" id="title" class="form-control" placeholder="제목을 입력해 주세요" aria-describedby="basic-addon1" value="${blogList[0].title}">
	</div>
	<!--제목 끝-->
	<br> <br>
	 <textarea name= "ir1" id="ir1" rows= "20" cols= "90" >${blogList[0].content} 
	</textarea>
	<br> <br>
	<div class="btn-group" role="group" aria-label="..." >
	  <button type="button" class="btn btn-default" onclick="submitContents(this)" style="text-align: center;">등록</button>
	  <a class="btn btn-default pull-left" href="${cp}/admin/blog/enter.do">취소</a>
	</div>
	</form>
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
