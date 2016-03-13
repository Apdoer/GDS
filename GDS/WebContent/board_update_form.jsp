<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    var id = document.getElementById("id").value;
    var type = document.getElementById("type").value;
	var title = document.getElementById("title").value;
	var content = document.getElementById("ir1").value;
	
	$.ajax({
		url: '${cp}/admin/board/update.ajax',
		method: 'POST',
		data: {
			id: id,
			type: type,
			title: title,
			content: content
		}
	}).done(function(data) {
		alert(data.status ? '성공적으로 처리되었습니다.' : '처리 중 오류가 발생했습니다.');
		location.href = '${cp}/admin/board/enter.do';
	}).fail(function(error) {
		alert(error);
	});
}
</script>

<style type="text/css">
#board_form {margin-top: 120px;}

#board_form .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#board_form .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }
#board_form .option { width: 150px; float:left;}

</style>

<!-- 넣어주면 된디! -->
<!-- 넣어주겠딩  -->

<div id="#board_form" style="padding-top: 20px; padding-right: 8px; max-width: 800px;">
	<form>
	
		<input type="hidden" id="id" value="${board.id}">
	
		<div class="option" style="width: 150px; float: left;">
			<select id="type" class="form-control">
				<c:if test="${board.type eq '공지사항'}">
					<option>공지사항</option>
					<option>이벤트</option>
				</c:if>
				<c:if test="${board.type eq '이벤트'}">
					<option>이벤트</option>
					<option>공지사항</option>
				</c:if>
			</select>
		</div>

		<!--제목 시작 -->
		<div class="input-group" style="float: left; width: 640px;">
			<span class="input-group-addon" id="basic-addon1">제목</span>
			<input type="text" id="title" class="form-control" placeholder="제목을 입력해 주세요"
				aria-describedby="basic-addon1" value="${board.title}">
		</div>
		<!--제목 끝-->
		
		<br>
		<br>
		
		<textarea style="width: 100%;" name="ir1" id="ir1" rows="20" cols="115">${board.content}</textarea>
		
		<br>
		<br>
		
		<a class="btn btn-default pull-left" href="${cp}/admin/board/enter.do">목록으로</a>
		<a class="btn btn-default pull-right" href="javascript: submitContents(this);">글 수정</a>
		
	</form>
</div>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "ir1",
		sSkinURI : "${cp}/se2/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});
</script>

