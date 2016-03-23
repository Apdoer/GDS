<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#admin_counsel img.dummy { margin-bottom: 16px; width: 100%; height: 320px; }

#admin_counsel { padding-left: p }
#admin_counsel h1 { margin-top: 20px; }

#admin_counsel .left-counsel-list table th { text-align: center; }
#admin_counsel .left-counsel-list table td { text-align: center; vertical-align: middle; }
#admin_counsel .left-counsel-list table td:nth-child(1) { text-align: left; }
#admin_counsel .left-counsel-list table td:nth-child(2) { width: 5%; }
#admin_counsel .left-counsel-list table td:nth-child(3) { width: 15%; } 
#admin_counsel .left-counsel-list table td:nth-child(4) { width: 20%; }
#admin_counsel .left-counsel-list table td p.category-name { font-weight: bold; }
#admin_counsel .left-counsel-list table td p { margin-bottom: 0px; }

#admin_counsel .right-counsel-content p.category-name { font-size: 1.5em; font-weight: bold; }
#admin_counsel .right-counsel-content p.possible-time { color: #777; text-align: right; }
#admin_counsel .right-counsel-content div.panel-body.memo { border-top: 1px solid #ddd; }

/* 공통 */
.paginator { text-align: center; }
.paginator ul.pagination li a,
.paginator ul.pagination li span { border: 0px; color: #555; }
</style>	

<div id="admin_counsel">
	
	<h1 class="page-header">
		상담신청현황
		<span id="undoneCounselCnt" class="badge">${undoneCounselCnt}</span>
	</h1>
	
	<div class="row">
	
		<div class="col-xs-6 left-counsel-list">
			<!-- load counsel list by ajax -->
		</div>

		<div class="col-xs-6 right-counsel-content">
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
		
		// convert phone number
		var telno_str = $('span.counselee-phone').html().trim();
		var modified_telno = telno_str.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/, '$1 - $2 - $3');
		$('span.counselee-phone').html('(' + modified_telno + ')');
		
		// convert possible time
		var possible_time = $('p.possible-time').html().trim();
		$('p.possible-time').html((possible_time + '시 - ' + (Number(possible_time) + 1) + '시 사이 면담 요청'));
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
			'memo': $('textarea[id=memo]').val().replace(/\n/g, '<br>')
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
