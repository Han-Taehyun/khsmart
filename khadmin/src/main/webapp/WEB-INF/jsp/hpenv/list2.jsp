<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 40px; display: inline-block; width: 100%;'>

		<form id="form1" name="form1" method="post" action="hpenv2List">
			<input type="hidden" name="orderKeyword" id="orderKeyword"
				value="<c:out value="${fn:trim(searchVO.orderKeyword)}" />" /> <input
				type="hidden" name="id" id="id" value="" /> <input type="hidden"
				name="lcode" id="lcode" value="" />

			<div class="col-lg-12">
				<section class="box ">

					<header class="panel_header">
						<h2 class="title pull-left">CMS 노출강좌 목록</h2>
						<div class="pull-right" style="padding-top: 10px">
							<ul class="list-unstyled" style="width: 100%">

								<li style="float: left;"><select id="selectlcode"
									style="width: 300px; padding-left: 10px; padding-right: 20px"
									name="code2" class="form-control m-bot15">
										<option value="">::노출방식 선택::</option>
										<c:forEach var="courseList" items="${courseList}"
											varStatus="status">
											<option
												<c:if test="${courseList.sn eq searchVO.code2}">selected</c:if>
												value="${courseList.sn}"><c:out
													value="${courseList.title}" /></option>
										</c:forEach>
								</select></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">신규</button>
								</li>
							</ul>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<table class="table">
									<thead>
										<tr>
											<th>#</th>


											<th>강좌명</th>
											<th>순서</th>

											<th>삭제</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">
											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>


												<td><c:out value="${listview.title}" /></td>

												<td><c:out value="${listview.ord}" /></td>
												<td><input type="button" value="삭제"
													onclick="deletePkgCos('${listview.sn}')"></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12"
								style='border-top: 2px solid #d8d8d8; padding-top: 20px;'>
								<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />
							</div>
		</form>

		<form name="form2">
			<input type="hidden" name="sn"> <input type="hidden"
				name="code2" value="${searchVO.code2}">
		</form>


		<script>
			function fn_formSubmit() {
				document.form1.submit();
			}
		</script>

		<script>
			function fn_formGo() {
				document.form1.lcode.value = document
						.getElementById("selectlcode").value;
				document.form1.action = "hpenv2Form";
				if (document.form1.lcode.value == "0") {
					alert("과목코드를 선택하세요");
					document.getElementById("selectlcode").focus();
				} else {
					document.form1.submit();
				}

			}
		</script>


		<script>
			function deletePkgCos(_param) {

				document.form2.sn.value = _param;
				
				document.form2.action = "hpenv2Del";
				document.form2.target = "_hid_edumgt_";
				document.form2.submit();
			}
		</script>


		</div>
		</div>
	</section>
	</div>
</section>
</section>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />