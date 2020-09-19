<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
response.setHeader("Content-Disposition","attachment;filename=abcd0001.xls");
%>
<!DOCTYPE html>
<html class=" ">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<style>
td{mso-number-format: "@";border:1px solid #111111;}
</style>
</head>
<body class=" ">
	<table class="table">
		<thead>
			<tr>
				

				<th style='width: 20%'>쿠폰명</th>

				<th style='width: 20%'>쿠폰번호</th>

				<th style='width: 10%'>사용여부 
				</th>




				<th style='width: 20%'>기간</th>

				<th style='width: 20%'>적용</th>



			</tr>
		</thead>
		<tbody>
			<c:forEach var="listview" items="${listview}" varStatus="status">

				<tr>
					

					<td><c:out
								value="${listview.cu_subject}" /></td>

					<td><c:out value="${listview.cu_number}" /></td>


					<td><c:out value="${listview.cu_status}" /></td>




					<td><c:out value="${listview.cu_use_day}" />~<c:out
							value="${listview.cu_use_time}" /></td>

					<td><c:out value="${listview.cu_opt1}" /> <c:out
							value="${listview.cu_opt4}" /></td>


				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>

</html>


