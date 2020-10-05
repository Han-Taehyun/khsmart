<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="pkgSave" method="post"
	enctype="multipart/form-data">

	<input name="sn" type="hidden" value="${cvo.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">패키지 입력</h2>
						<div class="actions panel_actions pull-right"></div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">

											<tr>
												<td class="tdl" style="width: 15%">타이틀</td>

												<td style="width: 85%" colspan="3"><input
													name="pkgtitle" type="text" value="${cvo.pkgtitle}"
													class="form-control"></td>
											</tr>


											<tr>


												<td class="tdl" style="width: 15%">패키지소개</td>

												<td style="width: 85%" colspan="3"><textarea
														name="pkgmemo"
														style="width: 100%; height: 130px; font-size: 13px; line-height: 15px; padding: 5px;">${cvo.pkgmemo}</textarea>

												</td>
											</tr>


											<tr>

												<td class="tdl" style="width: 15%">수강기한(일)</td>
												<td style="width: 35%"><input name="dday" type="text"
													value="${cvo.dday}" class="form-control"
													style="width: 120px" maxlength="3"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

												<td class="tdl" style="width: 15%">가격</td>

												<td style="width: 35%"><input name="pkgprice"
													type="text" value="${cvo.pkgprice}" class="form-control"
													style="width: 120px" maxlength="7"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

											</tr>

											<tr>

												<td class="tdl" style="width: 15%">원가(하이픈)</td>
												<td style="width: 35%"><input name="porgprice"
													type="text" value="${cvo.porgprice}" class="form-control"
													style="width: 120px" maxlength="8"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

												<td class="tdl" style="width: 15%">할인율</td>

												<td style="width: 35%"><input name="pdcr" type="text"
													value="${cvo.pdcr}" class="form-control"
													style="width: 120px" maxlength="3"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

											</tr>

											<tr>
												<td class="tdl" style="width: 15%">태그</td>

												<td style="width: 85%" colspan="3"><select
													name="cotag1"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="XXX">::선택::</option>
														<c:forEach var="seltag1" items="${seltag1}"
															varStatus="status">
															<option value="${seltag1.tgcode}"
																<c:if test="${cvo.cotag1 eq seltag1.tgcode}">selected</c:if>>${seltag1.tgname}</option>
														</c:forEach>

												</select> <select name="cotag2"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="XXXX">::선택::</option>
														<c:forEach var="seltag2" items="${seltag2}"
															varStatus="status">
															<option value="${seltag2.tgcode}"
																<c:if test="${cvo.cotag2 eq seltag2.tgcode}">selected</c:if>>${seltag2.tgname}</option>
														</c:forEach>

												</select> <select name="cotag3"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="XXXXX">::선택::</option>
														<c:forEach var="seltag3" items="${seltag3}"
															varStatus="status">
															<option value="${seltag3.tgcode}"
																<c:if test="${cvo.cotag3 eq seltag3.tgcode}">selected</c:if>>${seltag3.tgname}</option>
														</c:forEach>

												</select></td>
											</tr>


											<tr>


												<td class="tdl" style="width: 15%">배너이미지</td>

												<td style="width: 85%" colspan="3">이미지1 : <input
													type="file" name="img1file" /> <c:if
														test="${ !empty cvo.img1 }">
														<img src="images/${cvo.img1}" style="width: 50px">
													</c:if> 이미지2 : <input type="file" name="img2file" /> <c:if
														test="${ !empty cvo.img2 }">
														<img src="images/${cvo.img2}" style="width: 50px">
													</c:if> 이미지3 : <input type="file" name="img3file" /> <c:if
														test="${ !empty cvo.img3 }">
														<img src="images/${cvo.img3}" style="width: 50px">
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

		if (document.form1.pkgtitle.value == '') {
			alert('패키지명을 입력하세요');
			document.form1.pkgtitle.focus();
		} else {

			if (document.form1.pkgmemo.value == '') {
				alert('패키지 설명을 입력하세요');
				document.form1.pkgmemo.focus();
			} else {

				if (document.form1.dday.value == '') {
					alert('수강기한을 입력하세요');
					document.form1.dday.focus();
				} else {
					if (document.form1.pkgprice.value == '') {
						alert('판매가를 입력하세요');
						document.form1.pkgprice.focus();
					} else {

						if (document.form1.cotag1.value == "") {
							alert('태그를 최소 1종을 선택하세요');
							document.form1.cotag1.focus();
						} else {
							if (document.form1.cotag1.value == document.form1.cotag2.value
									|| document.form1.cotag1.value == document.form1.cotag3.value
									|| document.form1.cotag2.value == document.form1.cotag3.value) {
								alert('태그는 중복되지 않게 선택하세요');
								document.form1.cotag2.focus();
							} else {

								document.form1.submit();

							}
						}
					}
				}
			}
		}
	}

	function fn_formRtn() {
		document.formList.submit();

	}
</script>


<form name="formList" action="PackageList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />