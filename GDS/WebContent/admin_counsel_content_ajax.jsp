<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="panel panel-default">
	<div class="panel-body detail">
		<p class="category-name">${counsel.categoryName}</p>
		${counsel.detail}
	</div>
	<div class="panel-body memo">
		<form class="form-horizontal">
			<div>
				<label><input type="checkbox" id="doneyn"
					<c:if test='${counsel.doneyn == "y"}'>checked="checked"</c:if>> 답변완료로 표시 </label>
			</div>
			<div>
				<textarea class="form-control" id="memo" rows="5">${counsel.memo.replaceAll("<br>", "\\r\\n")}</textarea>
			</div>
			<button class="btn btn-default pull-right" style="margin-top: 8px;"
				onclick="updateCounsel(${counsel.id}); return false;">저장하기</button>
		</form>
	</div>
</div>
