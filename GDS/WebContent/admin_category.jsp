<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<style>
#admin_category { padding-left: p }
#admin_category h1 { margin-top: 20px; }

#admin_category .category-list { margin-top: 20px; }
#admin_category .category-list ul li div.name { display: inline-block; padding: 8px; }
#admin_category .category-list ul li span.glyphicon { font-size: 1.2em; padding: 8px; cursor: pointer; }
</style>	

<div id="admin_category">
	
	<h1 class="page-header">
		상담과목관리
	</h1>
	
	<div class="row">
	
		<div class="col-md-6 ">
		
			<form onsubmit="javascript: createCategory(); return false;">
				<div class="row">
					<div class="col-md-6">
						<div class="input-group">
							<input type="text" name="name" class="form-control" placeholder="상담과목명">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">추가</button>
							</span>
						</div>
					</div>
				</div>
			</form>
		
			<div class="category-list">
				<!-- load counsel list by ajax -->
			</div>
			
		</div>

	</div>
	
<script type="text/javascript">
function listCategory() {
	$.ajax({
		url: '${cp}/admin/category/list.ajax'
	}).done(function(data) {
		$('div.category-list').html(data);
	}).fail(function(error) {
		alert(error);
	});
}

function createCategory() {
	var input_name = $('input[name=name]');
	
	$.ajax({
		url: '${cp}/admin/category/create.ajax',
		method: 'POST',
		data: { 'name': input_name.val() }
	}).done(function(data) {
		if (data.status) {
			alert('성공적으로 처리되었습니다.');
			listCategory();
			input_name.val('');
		} else {
			alert('처리 중 오류가 발생했습니다.');
		}
	}).fail(function(error) {
		alert(error);
	});
}

function deleteCategory(id) {
	if (!confirm('해당 상담과목을 삭제하시겠습니까?')) {
		return;
	}
	
	$.ajax({
		url: '${cp}/admin/category/delete.ajax',
		method: 'POST',
		data: { 'id': id }
	}).done(function(data) {
		if (data.status) {
			alert('성공적으로 처리되었습니다.');
			listCategory();
		} else {
			alert('처리 중 오류가 발생했습니다.');
		}
	}).fail(function(error) {
		alert(error);
	});
}

$(function() {
	listCategory();
});
</script>
	
</div>
