<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="chapterSave" method="post"
	enctype="multipart/form-data">

	<input name="sn" type="hidden" value="${cvo.sn}"> <input
		name="memo" type="hidden" value="">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">강의 입력</h2>
						<div class="actions panel_actions pull-right"></div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">


											<tr>
												<td class="tdl" style="width: 15%">선택강좌명</td>

												<td style="width: 85%" colspan="3">${courseinfo.title}
													<input name="coid" type="hidden" value="${courseinfo.sn}">
												</td>
											</tr>


											<tr>
												<td class="tdl" style="width: 15%">타이틀</td>

												<td style="width: 85%" colspan="3"><input name="title"
													type="text" value="${cvo.title}" class="form-control"></td>
											</tr>




											<tr>

												<td class="tdl" style="width: 15%">순서</td>
												<td style="width: 35%"><input name="ord" type="text"
													value="${cvo.ord}" class="form-control"
													style="width: 120px" maxlength="4"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

												<td class="tdl" style="width: 15%">mp4 URL</td>

												<td style="width: 35%"><input name="mp4url" type="text"
													value="${cvo.mp4url}" class="form-control"></td>

											</tr>


											<tr>

												<td class="tdl" style="width: 15%">RUNTIME(분)</td>
												<td style="width: 35%"><input name="runtime"
													type="text" value="${cvo.runtime}" class="form-control"
													style="width: 120px" maxlength="3"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

												<td class="tdl" style="width: 15%">맛보기여부</td>

												<td style="width: 35%"><select name="prv"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>

														<option value="Y"
															<c:if test="${cvo.prv eq 'Y'}">selected</c:if>>맛보기</option>
														<option value="N"
															<c:if test="${cvo.prv eq 'N'}">selected</c:if>>맛보기아님</option>


												</select></td>

											</tr>



											<tr>


												<td class="tdl" style="width: 15%">배너이미지</td>

												<td style="width: 85%" colspan="3">이미지1 : <input
													type="file" name="chpimg1file" /> <c:if
														test="${ !empty cvo.chpimg1 }">
														<img src="images/${cvo.chpimg1}" style="width: 50px">
													</c:if> 이미지2 : <input type="file" name="chpimg2file" /> <c:if
														test="${ !empty cvo.chpimg2 }">
														<img src="images/${cvo.chpimg2}" style="width: 50px">
													</c:if>


												</td>
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

		if (document.form1.title.value == '') {
			alert('강의명을 입력하세요');
			document.form1.title.focus();
		} else {

			

				if (document.form1.ord.value == '') {
					alert('순서를 입력하세요');
					document.form1.ord.focus();
				} else {
					if (document.form1.mp4url.value == '') {
						alert('동영상정보를 입력하세요');
						document.form1.mp4url.focus();
					} else {

						

						document.form1.submit();

						
					}
				}
			
		}
	}

	function fn_formRtn() {
		document.formList.submit();

	}
</script>


<form name="formList" action="chapterList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />