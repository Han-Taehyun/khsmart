<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
response.setHeader("Content-Disposition","attachment;filename=tutor.xls");
%>
<!DOCTYPE html>
<html class=" ">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<style>
td {
	mso-number-format: "@";
	border: 1px solid #111111;
}
</style>
</head>
<body class=" ">


	<table class="table">
		<thead>
			<tr>
			
			<th>직업1</th>
			<th>직업2</th>
			<th>직업3</th>
			

				<th>아이디</th>

				<th>이름</th>

				<th>이메일</th>

				<th>연락처</th>

				<th>생년월일</th>
				<th>강사유형</th>
				<th>활동지역</th>
				<th>주소</th>





			</tr>
		</thead>
		<tbody>
			<c:forEach var="listview" items="${listview}" varStatus="status">


				<tr>

											<td>
												<c:out value="${listview.utjcode1}" />
											</td>
											<td>
												<c:out value="${listview.utjcode2}" />
											</td>
											<td>
												<c:out value="${listview.utjcode3}" />
											</td>

					<th>${listview.userid}</th>

					<td><c:out value="${listview.username}" /></td>
					<td><c:out value="${listview.email}" /></td>
					<td><c:out value="${listview.mobile}" /></td>
					<td><c:out value="${listview.birthyyyymmdd}" /></td>

					<td><c:out value="${listview.tutortype}" /></td>
					<td><c:out value="${listview.activearea}" /></td>

					<td><c:out value="${listview.addr}" /></td>




				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>