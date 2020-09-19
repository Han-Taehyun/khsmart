<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="courseSave" method="post"
	enctype="multipart/form-data">

	<input name="sn" type="hidden" value="${cvo.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">강좌 입력</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								href="#section-settings"></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">

											<tr>
												<td class="tdl" style="width: 15%">타이틀</td>

												<td style="width: 85%" colspan="3"><input name="title"
													type="text" value="${cvo.title}" class="form-control"></td>
											</tr>


											<tr>

												<td class="tdl" style="width: 15%">강좌분류</td>
												<td style="width: 35%"><select name="typecode"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="selctype" items="${selctype}"
															varStatus="status">
															<option value="${selctype.ctcode}"
																<c:if test="${cvo.typecode eq selctype.ctcode}">selected</c:if>>${selctype.codename}</option>
														</c:forEach>

												</select></td>


												<td class="tdl" style="width: 15%">강사선택</td>
												<td style="width: 35%"><select name="tutorid"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="selctt" items="${selctt}"
															varStatus="status">
															<option value="${selctt.userid}"
																<c:if test="${cvo.tutorid eq selctt.userid}">selected</c:if>>${selctt.ttname}</option>
														</c:forEach>

												</select></td>


											</tr>





											<tr>


												<td class="tdl" style="width: 15%">강좌소개</td>

												<td style="width: 85%" colspan="3"><textarea
														name="intro"
														style="width: 100%; height: 130px; font-size: 13px; line-height: 15px; padding: 5px;">${cvo.intro}</textarea>

												</td>
											</tr>

											<tr>


												<td class="tdl" style="width: 15%">커리큘럼</td>

												<td style="width: 85%" colspan="3"><textarea
														name="curriculum"
														style="width: 100%; height: 130px; font-size: 13px; line-height: 15px; padding: 5px;">${cvo.curriculum}</textarea>

												</td>
											</tr>





											<tr>

												<td class="tdl" style="width: 15%">전체강의시간(분)</td>
												<td style="width: 35%"><input name="tottime"
													type="text" value="${cvo.tottime}" class="form-control"
													style="width: 120px" maxlength="3"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

												<td class="tdl" style="width: 15%">하트수</td>

												<td style="width: 35%"><input name="totheartnum"
													type="text" value="${cvo.totheartnum}" class="form-control"
													style="width: 120px" maxlength="3"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
											</tr>
											<tr>

												<td class="tdl" style="width: 15%">수강기한(일)</td>
												<td style="width: 35%"><input name="dday" type="text"
													value="${cvo.dday}" class="form-control"
													style="width: 120px" maxlength="3"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

												<td class="tdl" style="width: 15%">가격</td>

												<td style="width: 35%"><input name="price" type="text"
													value="${cvo.price}" class="form-control"
													style="width: 120px" maxlength="6"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

											</tr>



											<tr>


												<td class="tdl" style="width: 15%">수강타겟</td>

												<td style="width: 85%" colspan="3"><select
													name="cotarget1"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="seltgc1" items="${seltgc1}"
															varStatus="status">
															<option value="${seltgc1.tgcode}"
																<c:if test="${cvo.cotarget1 eq seltgc1.tgcode}">selected</c:if>>${seltgc1.tgname}</option>
														</c:forEach>

												</select> <select name="cotarget2"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="seltgc2" items="${seltgc2}"
															varStatus="status">
															<option value="${seltgc2.tgcode}"
																<c:if test="${cvo.cotarget2 eq seltgc2.tgcode}">selected</c:if>>${seltgc2.tgname}</option>
														</c:forEach>

												</select> <select name="cotarget3"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="seltgc3" items="${seltgc3}"
															varStatus="status">
															<option value="${seltgc3.tgcode}"
																<c:if test="${cvo.cotarget3 eq seltgc3.tgcode}">selected</c:if>>${seltgc3.tgname}</option>
														</c:forEach>

												</select></td>
											</tr>

											<tr>


												<td class="tdl" style="width: 15%">태그</td>

												<td style="width: 85%" colspan="3"><select
													name="cotag1"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="seltag1" items="${seltag1}"
															varStatus="status">
															<option value="${seltag1.tgcode}"
																<c:if test="${cvo.cotag1 eq seltag1.tgcode}">selected</c:if>>${seltag1.tgname}</option>
														</c:forEach>

												</select> <select name="cotag2"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="seltag2" items="${seltag2}"
															varStatus="status">
															<option value="${seltag2.tgcode}"
																<c:if test="${cvo.cotag2 eq seltag2.tgcode}">selected</c:if>>${seltag2.tgname}</option>
														</c:forEach>

												</select> <select name="cotag3"
													style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="seltag3" items="${seltag3}"
															varStatus="status">
															<option value="${seltag3.tgcode}"
																<c:if test="${cvo.cotag3 eq seltag3.tgcode}">selected</c:if>>${seltag3.tgname}</option>
														</c:forEach>

												</select></td>
											</tr>


											<tr>


												<td class="tdl" style="width: 15%">배너이미지</td>

												<td style="width: 85%" colspan="3">
												
													이미지1 : <input
													type="file" name="cosimg1file" /> 
													
													<c:if test="${ !empty cvo.cosimg1 }"><img src="images/${cvo.cosimg1}" style="width:50px"></c:if>
													
													이미지2 : <input
													type="file" name="cosimg2file" /> 
													
													<c:if test="${ !empty cvo.cosimg2 }"><img src="images/${cvo.cosimg2}" style="width:50px"></c:if>
													
													이미지3 : <input
													type="file" name="cosimg3file" />
													
													<c:if test="${ !empty cvo.cosimg3 }"><img src="images/${cvo.cosimg3}" style="width:50px"></c:if>
													
													
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
			alert('강좌명을 입력하세요');
			document.form1.title.focus();
		} else {

			if (document.form1.typecode.value == '') {
				alert('강좌분류를 선택하세요');
				document.form1.typecode.focus();
			} else {
				if (document.form1.tutorid.value == '') {
					alert('강사를 선택하세요');
					document.form1.tutorid.focus();
				} else {
					if (document.form1.intro.value == '') {
						alert('강좌소개를 입력하세요');
						document.form1.intro.focus();
					} else {
						if (document.form1.curriculum.value == '') {
							alert('커리큘럼을 입력하세요');
							document.form1.curriculum.focus();
						} else {
							if (document.form1.tottime.value == '') {
								alert('전체강의시간을 입력하세요');
								document.form1.tottime.focus();
							} else {
								if (document.form1.dday.value == '') {
									alert('수강기한을 입력하세요');
									document.form1.dday.focus();
								} else {
									if (document.form1.price.value == '') {
										alert('판매가를 입력하세요');
										document.form1.price.focus();
									} else {
										if (document.form1.cotarget1.value == '') {
											alert('대상을 최소 1종을 선택하세요');
											document.form1.cotarget1.focus();
										} else {
											if (document.form1.cotag1.value == "") {
												alert('태그를 최소 1종을 선택하세요');
												document.form1.cotag1.focus();
											} else {
												if (document.form1.cotag1.value == document.form1.cotag2.value
														|| document.form1.cotag1.value == document.form1.cotag3.value
														|| document.form1.cotag2.value == document.form1.cotag3.value) {
													alert('태그는 중복되지 않게 선택하세요');
													document.form1.cotag2
															.focus();
												} else {

													if (document.form1.cotarget1.value == document.form1.cotarget2.value
															|| document.form1.cotarget1.value == document.form1.cotarget3.value
															|| document.form1.cotarget2.value == document.form1.cotarget3.value) {
														alert('타겟은 중복되지 않게 선택하세요');
														document.form1.cotarget2
																.focus();
													} else {
														document.form1.submit();
													}

												}
											}
										}
									}
								}
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


<form name="formList" action="courseList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />