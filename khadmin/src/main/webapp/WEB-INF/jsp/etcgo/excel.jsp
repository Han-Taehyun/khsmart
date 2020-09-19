<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
response.setHeader("Content-Disposition","attachment;filename=codet.xls");
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

				

				<th>사업자번호</th>

				<th>기관명</th>
				
				<th>대표자</th>
				
				<th>계산서 이메일</th>
				
				<th>담당자 명</th>
				<th>담당자 연락처</th>
				
				
				<th>담당자 이메일</th>
				
				<th>기관연락처</th>





			</tr>
		</thead>
		<tbody>
			<c:forEach var="listview" items="${listview}" varStatus="status">


				<tr>



					

					<th>${listview.comregno}</th>

					<th>${listview.elsname}</th>
					
					<th>${listview.chief}</th>
					
					<th>${listview.email}</th>
					
					<th>${listview.ddname}</th>
					<th>${listview.ddphone}</th>
					
					
					<th>${listview.email2}</th>
					
					<th>${listview.phone}</th>




				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>