<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html class=" ">

<head>

    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>Ultarischool Admin</title>
    <meta name="viewport" 
    content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    

    <!-- CORE CSS TEMPLATE - START -->
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" />


</head>

<body style="padding:10px">

<script>
<c:if test="${ not empty contactusdetail }">
opener.location.reload();
window.close();
</c:if>
</script>


	<div style="padding:10px">


		



			<table style="width: 100%;border-collapse:collapse">

				<tr>
					<td width="100%" colspan="3" style="padding:10px;background-color:#fff">지원 강사 목록</td>
				</tr>

				<tr style="border-bottom:1px solid #333">
					<td width="20%" style="padding:10px">지역</td>
					<td width="50%" style="padding:10px">강사명</td>
					<td width="30%" style="padding:10px">이메일</td>
				</tr>





				<c:forEach var="listview" items="${listview}" varStatus="status">

					<tr style="border-bottom:1px solid #333">

						<td width="20%" style="padding:10px">${listview.username}</td>
						<td width="50%" style="padding:10px"><a
							href="javascript:goPt('${listview.tutorid}','${listview.ctusdtlsn}')">${listview.username}</a></td>
						<td width="30%" style="padding:10px">${listview.email}</td>
					</tr>
				</c:forEach>



			</table>

		
		<form name="form1" action="ttctdsave" method="post">
		<input type="hidden" name="tutorid">
		<input type="hidden" name="ctusdtlsn">
		</form>

	</div>

	<script>
		function goPt(_a, _b) {

			document.form1.tutorid.value=_a;
			document.form1.ctusdtlsn.value=_b;
			
			document.form1.submit();

		}
	</script>




</body>

</html>


