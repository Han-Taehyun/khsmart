<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="surveyInsert" method="post"
	enctype="multipart/form-data">

	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">설문 상세</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								href="#section-settings"></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">



						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">
									<tr>


										<td class="tdl" style="width: 15%">설문 분류</td>

										<td style="width: 35%"><select class="form-control"
											name="svtype" id="svtype" style="width: 250px" required>

												<option value="">::설문 분류 선택::</option>
												<c:forEach var="code" items="${usercodeList}"
													varStatus="status">

													<option value="${code.code}">${code.codename}</option>

												</c:forEach>

										</select></td>

										<!-- 
										<td class="tdl" style="width: 15%">설문배정</td>
										<td style="width: 35%"><select class="form-control"
											name="ctudsn" id="ctudsn" style="width: 100%">

												<option value="0">::수강 반 선택::</option>

												<c:forEach var="cdctlist" items="${cdctlist}"
													varStatus="status">

													<option value="${cdctlist.sn}"
														<c:if test="${ ctudsn eq cdctlist.sn}">selected</c:if>>
														${cdctlist.svmemo}</option>

												</c:forEach>

										</select></td> -->
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">설문제목</td>
										<td style="width: *" colspan="3"><input name="svname"
											value="${survey.svname}" type="text" class="form-control"
											required></td>

									</tr>

									<tr>


										<td class="tdl" style="width: 15%">설문설명</td>
										<td style="width: *" colspan="3"><input name="svmemo"
											value="${survey.svmemo}" type="text" class="form-control"
											required></td>

									</tr>
								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-gray"
								onclick="confirmToList()">목록</button>

							<button type="submit" class="btn btn-orange">저장</button>
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
	function confirmToList() {
		var confirmVal = confirm("작성한 내용은 저장되지 않습니다.\n나가시겠습니까?");
		if (confirmVal) {
			location.href = "surveyList";
		}
	}
</script>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


