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
<body>
	<div id="login_div" class="main-div" style="padding: 25px">
		<form name="form1" action="userStSrch" method="post"
			enctype="multipart/form-data">
			<table style="width: 90%">
				<tr>
					<td width="20%" style="height: 30px; text-align: center">수강생명</td>
					<td width="60%"><input type="text" name="username"
						style="width: 95%; height: 30px" value=""></td>

					<td width="20%" style="height: 30px; text-align: center"><span
						class="btn btn-primary " onclick="up222()" style="cursor: pointer">검색</span></td>
				</tr>


				<tr>
					<td colspan="3"
						style="padding: 20px; height: 30px; border-top: 1px solid #aaa">&nbsp;</td>

				</tr>

				<c:forEach var="ulist" items="${ulist}" varStatus="status">

					<tr>
						<td width="20%"
							style="height: 30px; text-align: center; border: 1xp solid #ddd">${ulist.userid}</td>
						<td width="60%"
							style="height: 30px; text-align: center; border: 1xp solid #ddd">${ulist.username}</td>

						<td width="20%"
							style="height: 30px; text-align: center; border: 1xp solid #ddd">
							<span class="btn btn-primary "
							onclick="chkuser('${ulist.userid}')" style="cursor: pointer">저장</span>
						</td>
					</tr>



				</c:forEach>

				<tr>
					<td colspan="3"
						style="padding: 20px; height: 30px; border-bottom: 1px solid #888">&nbsp;</td>

				</tr>


				<tr>
					<td colspan="3"
						style="padding: 20px; border: 0px; text-align: right"><span
						class="btn btn-primary " onclick="javacript:window.close()"
						style="cursor: pointer">닫기</span></td>

				</tr>


			</table>
		</form>
	</div>



	<script>
		function up222() {
			document.form1.action = "userStSrch";
			document.form1.submit();
		}
	</script>

	<script>
		function chkuser(_uid) {

			opener.document.getElementById("userid").value = _uid;
			window.close();

		}
	</script>
</body>
</html>


