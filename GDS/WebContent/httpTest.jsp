<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${cp}/script/jquery.js"></script>
<script type="text/javascript">
function ajaxSelect() {
	$.ajax({
		url: '${cp}/category/select.ajax'
	}).done(function(data) {
		if (data | data.length > 0) {
			$('ul#result').empty();
			$.each(data, function(idx, item) {
				var li = $('<li>');
				li.html('id: ' + item.id + '\tcategoryGubun: ' + item.categoryGubun + '\tcategoryName: ' + item.categoryName);
				$('ul#result').append(li);
			});
		}
	}).fail(function(error) {
		console.log(error);
	}).always(function() {
		console.log('finally, done.');
	});
}
</script>
</head>
<body>

	<div>
		<a href="${cp}/category/create.do?categoryGubun=F&categoryName=testCategory" style="font-size: 10em">create</a>
		<a href="${cp}/category/modify.do?id=4&categoryName=changedCategory" style="font-size: 10em">update</a>
		<a href="${cp}/category/delete.do?id=5" style="font-size: 10em">delete</a>
	</div>
	
	<div>
		<a href="javascript: ajaxSelect();" style="font-size: 10em">ajaxSelect</a>
	</div>
	
	<ul id="result">
	
	</ul>

</body>
</html>