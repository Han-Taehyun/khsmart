<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html class=" ">

<head>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Calendar</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />



<!-- CORE CSS TEMPLATE - START -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />


</head>

<body style="padding: 5px">

	<c:if test="${mvo.status eq '삭제'}">
		<script>
			function closeW() {

				opener.location.reload();
				window.close();

			}
			closeW();
		</script>
	</c:if>


	<div id="login_div" class="main-div" style="padding: 8px">

		<style>
.td {
	text-align: center;
	height: 40px;
	border: 1px solid #ddd;
	padding: 10px;
	font-size: 14px
}

#td {
	text-align: center;
	height: 40px;
	border: 1px solid #ddd;
	padding: 10px;
	font-size: 14px
}

td {
	text-align: center;
	height: 40px;
	border: 1px solid #ddd;
	padding: 10px;
	font-size: 14px
}
</style>



		<input name="sn" type="hidden" value="${mvo.sn}">

		<table style="width: 99%; border-collapse: collapse">

			<tr>
				<td width="20%">고객명</td>
				<td width="*" colspan="3"><input type="text" name="customerid"
					style="width: 99%; height: 30px" value="${mvo.customerid}"></td>
			</tr>



			<tr>
				<td width="20%">내용</td>
				<td width="*" colspan="3"><textarea name="cumemo"
						style="width: 99%; height: 230px; font-family: '맑은 고딕', verdana, san-serif;">${mvo.cumemo}</textarea>
				</td>
			</tr>

			<tr>
				<td width="20%">년도</td>
				<td width="30%"><select name="yyyy"
					style="width: 120px; padding: 5px">
						<%
								for (int i = 2020; i < 2023; i++) {
							%>
						<c:set var="yyyy">0<%=i%></c:set>
						<option value="<%= i %>"
							<c:if test="${mvo.yyyy eq yyyy}">selected</c:if>><%=i%>
							년도
						</option>
						<%
								}
							%>
				</select></td>

				<td width="20%">월</td>
				<td width="30%"><select name="mm"
					style="width: 120px; padding: 5px">
						<%
								for (int i = 1; i < 13; i++) {
							%>

						<%
								if (i < 10) {
							%>
						<c:set var="mm">0<%=i%></c:set>
						<option value="0<%= i %>"
							<c:if test="${mvo.mm eq mm}">selected</c:if>>0<%=i%> 월
						</option>
						<%
								} else {
							%>
						<c:set var="mm"><%=i%></c:set>
						<option value="<%= i %>"
							<c:if test="${mvo.mm eq mm}">selected</c:if>><%=i%> 월
						</option>
						<%
								}
							%>

						<%
								}
							%>
				</select></td>
			</tr>

			<tr>
				<td width="20%">일</td>
				<td width="30%"><select name="dd"
					style="width: 120px; padding: 5px">
						<%
								for (int i = 1; i < 32; i++) {
							%>


						<%
								if (i < 10) {
							%>
						<c:set var="dd">0<%=i%></c:set>
						<option value="0<%= i %>"
							<c:if test="${mvo.dd eq dd}">selected</c:if>>0<%=i%> 일
						</option>
						<%
								} else {
							%>
						<c:set var="dd"><%=i%></c:set>
						<option value="<%= i %>"
							<c:if test="${mvo.dd eq dd}">selected</c:if>><%=i%> 일
						</option>
						<%
								}
							%>

						<%
								}
							%>
				</select></td>

				<td width="20%">시간대</td>
				<td width="30%"><select name="hh"
					style="width: 120px; padding: 5px">

						<%
								for (int i = 10; i < 21; i++) {
							%>
						<c:set var="hh"><%=i%></c:set>


						<%
								if (i < 10) {
							%>
						<option value="0<%= i %>"
							<c:if test="${mvo.hh eq hh}">selected</c:if>>0<%=i%> 시
						</option>
						<%
								} else {
							%>
						<option value="<%= i %>"
							<c:if test="${mvo.hh eq hh}">selected</c:if>><%=i%> 시
						</option>
						<%
								}
							%>

						<%
								}
							%>
				</select></td>
			</tr>



			<tr>
				<td colspan="4"
					style="padding: 20px; border: 0px; text-align: right"><span
					class="button2"
					style="border: 1px solid #555; padding-bottom: 5px; padding-top: 5px; padding-right: 15px; padding-left: 15px; background-color: #555; color: #fff"
					onclick="javacript:window.close()">닫기</span></td>
			</tr>

		</table>



	</div>






</body>

</html>


