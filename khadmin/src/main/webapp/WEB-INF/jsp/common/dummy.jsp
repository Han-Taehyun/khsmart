<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<body onload="reloadp()">
<script>
function reloadp(){
	alert('작업을 완료 하였습니다.');
	parent.location.reload();
}
</script>
</body>
</html>