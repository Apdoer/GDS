<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#qna { padding-top: 20px; }
#qna .left-side-bar ul { list-style: none; margin: 0px; padding: 0px; width: 75%; }
#qna .left-side-bar ul li { border-bottom: 1px solid #eee; }
#qna .left-side-bar ul li:last-child { border: 0px; }
#qna .left-side-bar ul li a { display: inline-block; padding: 8px 16px; color: #aaa; font-size: 1.2em; text-decoration: none; }

#qna .right-article-content .title { padding: 8px; }
#qna .right-article-content .title h1 { margin: 0px; }
#qna .right-article-content .title h1 small { margin-left: 16px; }
#qna .right-article-content .content { padding: 16px 8px; }
#qna .right-article-content .content .header { color: #777; margin-bottom: 8px; }
#qna .right-article-content .content .header span:first-child { margin-right: 8px; }
#qna .right-article-content .content .body { padding-bottom: 16px; font-size: 1.2em; }

.line-horizontal { border: 1px solid #222; border-radius: 1px; }
</style>

<c:choose>
	<c:when test="${fromAdmin}">
	
		<div id="qna">
	
			<!-- qna content -->
			<div class="right-article-content">
			
				<div class="title">
					<h1>${qna.title}</h1>
				</div>
				
				<div class="line-horizontal"></div>
				
				<div class="content question">
				
					<div class="header">
						<span>
							<span class="glyphicon glyphicon-calendar"></span>
							<fmt:formatDate value="${qna.regdate}" pattern="yyyy년 MM월 dd일 HH시 mm분"/> &nbsp;
						</span>
					</div>
					
					<div class="body">
						${qna.question}
					</div>
					
				</div>
				
				<div class="line-horizontal"></div>
				
				<div class="content answer">
				
					<div class="header">
						<c:choose>
							<c:when test="${qna.answer != null}">
							
								<span>
									<span class="glyphicon glyphicon-calendar"></span>
									<fmt:formatDate value="${qna.regdateAnswer}" pattern="yyyy년 MM월 dd일 HH시 mm분"/> &nbsp;
								</span>
							
							</c:when>
							<c:otherwise>
							
								<span>아직 답변이 등록되지 않았습니다.</span>
							
							</c:otherwise>
						</c:choose>
					</div>
					
					<div class="body">
						<textarea class="form-control" rows="5"name="answer">${qna.answer.replaceAll("<br>", "&#13;&#10;")}</textarea>
					</div>
					
				</div>
				
				<a class="btn btn-default pull-left" href="javascript: location.href='enter.do';">목록으로</a>
				<a class="btn btn-default pull-right" href="javascript: answerQna(${qna.id});">답변 저장</a>
				<a class="btn btn-default pull-right" href="javascript: deleteQna(${qna.id});">글 삭제</a>
			
			</div>
			
		</div>
	
	</c:when>
	<c:otherwise>
	
		<div id="qna" class="container">

			<div class="row">
				
				<!-- qna left-side-bar -->
				<div class="col-md-2 left-side-bar">
				
					<ul class="pull-right">
						<li><a href="${cp}/board/enter.do">공지사항</a></li>
						<li><a href="${cp}/qna/enter.do" style="font-weight: bold;">온라인 문의</a></li>
					</ul>
				
				</div>
				
				<!-- qna content -->
				<div class="col-md-9 right-article-content">
				
					<div class="title">
						<h1>${qna.title}</h1>
					</div>
					
					<div class="line-horizontal"></div>
					
					<div class="content question">
					
						<div class="header">
							<span>
								<span class="glyphicon glyphicon-calendar"></span>
								<fmt:formatDate value="${qna.regdate}" pattern="yyyy년 MM월 dd일 HH시 mm분"/> &nbsp;
							</span>
						</div>
						
						<div class="body">
							${qna.question}
						</div>
						
					</div>
					
					<c:if test="${qna.answer != null}">
						<div class="line-horizontal"></div>
						
						<div class="content answer">
						
							<div class="header">
								<span>
									<span class="glyphicon glyphicon-calendar"></span>
									<fmt:formatDate value="${qna.regdateAnswer}" pattern="yyyy년 MM월 dd일 HH시 mm분"/> &nbsp;
								</span>
							</div>
							
							<div class="body">
								${qna.answer}
							</div>
							
						</div>
					</c:if>
					
					<a class="btn btn-default pull-left" href="javascript: location.href='enter.do';">목록으로</a>
					<a class="btn btn-default pull-right" href="javascript: deleteQna(${qna.id});">글 삭제</a>
					
				</div>
				
			</div>
			
		</div>
	
	</c:otherwise>	
</c:choose>

<script type="text/javascript">
function deleteQna(id) {
	if (!confirm('이 게시글을 삭제하시겠습니까?')) {
		return;
	}
	
	$.ajax({
		url: 'delete.ajax',
		method: 'POST',
		data: { 'id': id }
	}).done(function(data) {
		alert(data.status ? '성공적으로 처리되었습니다.' : '처리 중 오류가 발생했습니다.');
		location.href = 'enter.do';
	}).fail(function(error) {
		alert(error);
	});
}

function answerQna(id) {
	$.ajax({
		url: 'answer.ajax',
		method: 'POST',
		data: { 
			'id': id,
			'answer': $('textarea[name=answer]').val().replace(/\n/g, '<br>')
		}
	}).done(function(data) {
		alert(data.status ? '성공적으로 처리되었습니다.' : '처리 중 오류가 발생했습니다.');
		location.href = 'enter.do';
	}).fail(function(error) {
		alert(error);
	});
}
</script>