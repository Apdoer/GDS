<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#admin_counsel img.dummy { margin-bottom: 16px; width: 100%; height: 320px; }

#admin_counsel { padding-left: p }
#admin_counsel h1 { margin-top: 20px; }

#admin_counsel .right-counsel-content p.category-name { margin-bottom: 0px; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>	

<div id="admin_counsel">
	
	<h1 class="page-header">상담신청현황</h1>
	
	<div class="row">
	
		<div class="col-md-6 left-counsel-list"> 
		
			<table class="table">
				<tr>
					<th style="text-align: center;">제목</th>
					<th style="width: 20%;">작성일시</th>
				</tr>
				<c:choose>
					<c:when test="${searchVO.result != null && searchVO.result.size() > 0}">
						<c:forEach items="${searchVO.result}" var="counsel">
							<tr style="cursor: pointer;"
								onclick="javascript: getCounsel(${counsel.id});">
								<td style="vertical-align: middle; padding-left: 16px;">
									<p>${counsel.detail}</p>
									<p>${counsel.categoryName}</p>
								</td>
								<td style="vertical-align: middle; text-align: center;">${counsel.regdate}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" style="padding: 16px 0px; text-align: center;">
								등록된 상담신청내역이 존재하지 않습니다.
							</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
		
		</div>

		<div class="col-md-6 right-counsel-content">

		</div>
		
		<script type="text/javascript">
		function getCounsel(id) {
			$.ajax({
				url: '${cp}/admin/counsel/get.ajax',
				data: { 'id': id }
			}).done(function(data) {
				$('div.right-counsel-content').html(data);
			}).fail(function(error) {
				console.log(error);
			}).always(function() {
				console.log('finally, done.');
			});
		}
		</script>

	</div>
	
</div>
