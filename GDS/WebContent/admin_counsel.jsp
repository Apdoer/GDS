<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#admin_counsel img.dummy { margin-bottom: 16px; width: 100%; height: 320px; }

#admin_counsel { padding-left: p }
#admin_counsel h1 { margin-top: 20px; }

#admin_counsel .left-counsel-list table th { text-align: center; }
#admin_counsel .left-counsel-list table td { vertical-align: middle; }
#admin_counsel .left-counsel-list table td:nth-child(2) { padding: 0px 16px; width: 5%; } 
#admin_counsel .left-counsel-list table td:nth-child(3) { width: 20%; }
#admin_counsel .left-counsel-list table td p.category-name { font-weight: bold; }
#admin_counsel .left-counsel-list table td p { margin-bottom: 0px; max-width: 50%; }

#admin_counsel .right-counsel-content p.category-name { margin-bottom: 0px; font-weight: bold; }
#admin_counsel .right-counsel-content div.panel-body.memo { border-top: 1px solid #ddd; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>	

<div id="admin_counsel">
	
	<h1 class="page-header">상담신청현황</h1>
	
	<div class="row">
	
		<div class="col-md-6 left-counsel-list">
			<!-- load counsel list by ajax -->
		</div>

		<div class="col-md-6 right-counsel-content">
			<!-- load individual counsel content by ajax -->
		</div>
		
	</div>
	
<script type="text/javascript">
function listCounsel(pageIdx) {
	$.ajax({
		url: '${cp}/admin/counsel/list.ajax',
		data: { 'currentPage': pageIdx }
	}).done(function(data) {
		$('div.left-counsel-list').html(data);
	}).fail(function(error) {
		alert(error);
	});
}

function getCounsel(id) {
	$.ajax({
		url: '${cp}/admin/counsel/get.ajax',
		data: { 'id': id }
	}).done(function(data) {
		$('div.right-counsel-content').html(data);
	}).fail(function(error) {
		alert(error);
	});
}

function updateCounsel(id) {
	$.ajax({
		url: '${cp}/admin/counsel/modify.ajax',
		method: 'POST',
		data: { 
			'id': id,
			'doneyn': $('input[id=doneyn]').is(':checked') ? 'y' : 'n',
			'memo': $('textarea[id=memo]').val().replace('/\n/g', '<br>')
		}
	}).done(function(data) {
		alert(data.status ? '성공적으로 처리되었습니다.' : '처리 중 오류가 발생했습니다.');
		listCounsel($('input[name=currentPage]').val());
		$('#undoneCounselCnt').html(data.undoneCounselCnt);
	}).fail(function(error) {
		alert(error);
	});
}

$(function() {
	listCounsel(1);
});
</script>
	
</div>
