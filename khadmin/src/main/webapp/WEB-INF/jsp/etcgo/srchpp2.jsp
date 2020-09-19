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




	<div style="padding:10px">


		<form name="form1" action="" method="post">



			<table style="width: 100%;border-collapse:collapse">

				<tr>
					<td width="100%" colspan="3" style="padding:10px;background-color:#fff">기관목록</td>
				</tr>

				<tr style="border-bottom:1px solid #333">
					
					<td width="50%" style="padding:10px">기관명</td>
					
				</tr>





				<c:forEach var="listview" items="${listview}" varStatus="status">

					<tr style="border-bottom:1px solid #333">

						
						<td width="100%" style="padding:10px"><a
							href="javascript:goPt('${listview.sn}','${listview.elsname}')">${listview.elsname}</a></td>
						
					</tr>
				</c:forEach>



			</table>

		</form>

	</div>

	<script>
		function goPt(_a, _b) {

			opener.document.getElementById("etcgosn").value = _a;
			opener.document.getElementById("elsname").value = _b;

			window.close();

		}
	</script>




</body>

</html>


