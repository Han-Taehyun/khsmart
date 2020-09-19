<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="PackCosSave" method="post"
	enctype="multipart/form-data">

	


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">패키지별 강좌 연결</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">

											<tr>
												<td class="tdl" style="width: 15%">패키지 타이틀</td>

												<td style="width: 85%" colspan="3">${packinfo.pkgtitle}
													<input name="pkgid" type="hidden" value="${packinfo.sn}">
												</td>
											</tr>


											<tr>

												<td class="tdl" style="width: 15%">강좌 선택</td>
												<td style="width: 35%"><select name="cosid"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="courseList" items="${courseList}"
															varStatus="status">
															<option value="${courseList.sn}"
																>${courseList.title}</option>
														</c:forEach>

												</select></td>


												<td class="tdl" style="width: 15%">순서</td>
												<td style="width: 35%"><select name="ord"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="selctt" items="${selctt}"
															varStatus="status">
															<option value="${selctt.userid}"
																<c:if test="${cvo.tutorid eq selctt.userid}">selected</c:if>>${selctt.ttname}</option>
														</c:forEach>
														
														<c:forEach var="i" begin="1" end="10" step="1">
      														<option value="${i}"
																>${i} 번째 노출</option>
    													</c:forEach>


												</select></td>


											</tr>





										</table>




										<div class="form-group" style="margin-top: 10px">

											<button type="button" class="btn btn-gray"
												onclick="fn_formRtn()">목록</button>
											<button type="button" class="btn btn-orange"
												onclick="fn_formSv()">저장</button>


										</div>

									</div>

								</div>


							</div>
						</div>
					</div>
				</section>
			</div>





		</section>
	</section>
	<!-- END CONTENT -->

</form>
<script>
	function fn_formSv() {

		document.form1.submit();
													
	}

	function fn_formRtn() {
		document.formList.submit();

	}
</script>


<form name="formList" action="PackCosList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />