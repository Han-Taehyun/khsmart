<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html class=" ">

<head>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />



<!-- CORE CSS TEMPLATE - START -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />


</head>


<body>




	<div id="login_div" class="main-div" style="padding-top: 15px">


		<form name="form1" action="calSave" method="post"
			enctype="multipart/form-data">

			<input type="hidden" name="userid"> <input type="hidden"
				name="ymd" value="${mvo.ymd}">

			<table style="width: 100%">

				<tr>
					<td width="20%" style="height: 30px; text-align: center">유형</td>
					<td width="*"><select name="prgcode"
						style="width: 320px; padding: 5px" onchange="fn_ch()">

							<option value="">::선택::</option>

							<option value="01"
								<c:if test="${mvo.prgcode eq '01'}">selected</c:if>>유형1</option>
							

					</select></td>
				</tr>

				<tr>
					<td width="20%" style="height: 30px; text-align: center">제목</td>
					<td width="*"><select name="customerid"
						style="width: 320px; padding: 5px">

							<option value="">::선택::</option>

							<c:forEach var="listcomp" items="${listcomp}" varStatus="status">


								<option value="${listcomp.idx}">${listcomp.companyname}</option>

							</c:forEach>

					</select></td>
				</tr>

				<tr>

					<td width="20%" style="height: 30px; text-align: center">진행상태</td>

					<td width="*">
						<div style="padding-bottom: 20px; margin-left: -40px">

							<ul>
								<li
									style="list-style-type: none; float: left; margin-right: 30px">
									<select name="status" style="width: 120px; padding: 5px">

										<option value="">::선택::</option>

										<option value="예약"
											<c:if test="${mvo.status eq '예약'}">selected</c:if>>예약</option>
										<option value="완료"
											<c:if test="${mvo.status eq '완료'}">selected</c:if>>완료</option>

								</select>
								</li>

							</ul>
						</div>

					</td>
				</tr>



				<tr>
					<td width="20%" style="height: 30px; text-align: center">고객연락처</td>
					<td width="*"><input type="text" name="cuhp"
						style="width: 95%; height: 30px" value="${mvo.cuhp}"></td>
				</tr>

				<tr>
					<td width="20%" style="height: 30px; text-align: center">고객메모</td>
					<td width="*"><textarea name="cumemo"
							style="width: 90%; height: 170px; font-family: '맑은 고딕', verdana, san-serif;">${mvo.cumemo}</textarea></td>
				</tr>

				<tr>
					<td width="20%" style="height: 30px; text-align: center">년도</td>
					<td width="*"><select name="yyyy"
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
				</tr>
				<tr>
					<td width="20%" style="height: 30px; text-align: center">월</td>
					<td width="*"><select name="mm"
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
					<td width="20%" style="height: 30px; text-align: center">일</td>
					<td width="*"><select name="dd"
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
				</tr>

				<tr>
					<td width="20%" style="height: 30px; text-align: center"><font
						color="red">시간대</font></td>
					<td width="*"><select id="hh" name="hh"
						style="width: 120px; padding: 5px">

							<option value="">::선택하세요::</option>

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
					<td width="20%" style="height: 30px; text-align: center">분</td>
					<td width="*"><select name="mi"
						style="width: 120px; padding: 5px">


							<option value="0" <c:if test="${mvo.mi eq '0'}">selected</c:if>>정각</option>
							<option value="30" <c:if test="${mvo.mi eq '30'}">selected</c:if>>30
								분</option>


					</select></td>
				</tr>

				<tr>
					<td colspan="2"
						style="padding-top: 20px; border: 0px; text-align: right">
						<table style="">
							<tr>
								<td width="50%" style=""><span class="btn btn-primary "
									onclick="up()">저장</span></td>
								<td width="50%" style=""><span class="btn btn-primary "
									onclick="javacript:window.close()">닫기</span></td>
							</tr>
						</table>
					</td>
				</tr>

			</table>

		</form>

	</div>

	<script>
		function up() {

			if (document.getElementById('hh').value == '') {
				alert('시간대를 선택하시기 바랍니다.');

			} else {

				document.form1.action = "calSave";
				document.form1.submit();
			}

		}

		function chkup() {

			if (document.getElementById('hh').value == '') {

				alert('시간대를 선택하시기 바랍니다.');
			} else {

				document.form1.action = "newcal";
				document.form1.submit();

			}

		}

		function del() {

			if (confirm("삭제하시겠습니까?")) {

				document.form1.action = "calDel";
				document.form1.submit();

			} else {

			}
		}

		function fn_ch() {

			document.form1.action = "newcal";
			document.form1.submit();

		}
	</script>




</body>

</html>


