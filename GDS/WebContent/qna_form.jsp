<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna_form img.dummy { margin-bottom: 16px; width: 100%; height: 320px; }

#qna_form .left-side-bar ul { list-style: none; margin: 16px 0px 0px 0px; padding: 0px; width: 75%; }
#qna_form .left-side-bar ul li { border-bottom: 1px solid #eee; }
#qna_form .left-side-bar ul li:last-child { border: 0px; }
#qna_form .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#qna_form .right-form { border-left: 1px solid #eee; padding-bottom: 32px; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>

<div id="qna_form">

	<img class="dummy" alt="" src="${cp}/img/dummy.jpg">
	
	<div class="row">
		
		<!-- board left-side-bar -->
		<div class="col-md-2 left-side-bar">
		
			<ul class="pull-right">
				<li><a href="#">공지사항</a></li>
				<li><a href="#" style="font-weight: bold;">온라인 문의</a></li>
				<!-- <li><a href="#">상담신청</a></li> -->
			</ul>
		
		</div>
		
		<!-- board content -->
		<div class="col-md-8 right-form">
		
			<form class="form-horizontal">
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="title">
					</div>
					<div class="col-sm-2">
						<label class="control-label">
							비밀글 <input type="checkbox" id="openyn" checked="checked">
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">작성자</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="name">
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-2">
						<input type="password" class="form-control" id="password">
					</div>
				</div>
				<div class="form-group">
					<label for="question" class="col-sm-2 control-label">세부문의내용</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="question" rows="5"></textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-10 col-sm-offset-2">
						<a href="${cp}/qna/enter.do" class="btn btn-default">목록</a>
						<a href="javascript: submitQna();" class="btn btn-default pull-right">글쓰기</a>
						<!-- <button class="btn btn-default pull-right" type="submit">글쓰기</button> -->
					</div>
				</div>
			</form>
		
		</div>
		
	</div>
	
<script type="text/javascript">
function submitQna() {
	console.log('submit!');
	console.log($('form').serialize());
	$.ajax({
		url: '${cp}/qna/write.do',
		method: 'POST',
		data: {
			'title': $('input[id=title]').val(),
			'openyn': $('input[id=openyn]').is(':checked') ? 'y' : 'n',
			'name': $('input[id=name]').val(),
			'password': $('input[id=password]').val(),
			'question': $('textarea[id=question]').val().replace('/\n/g', '<br>')
		}
	}).done(function(data) {
		alert(data);
	}).fail(function(error) {
		alert(error);
	});
};
</script>
	
</div>