<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="tutorSave" method="post"
	enctype="multipart/form-data">

	<input name="sn" type="hidden" value="${cvo.sn}"> <input
		name="usertypecode" type="hidden" value="ST">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">수강생 입력</h2>
						<div class="actions panel_actions pull-right"></div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">



											<tr>

												<td class="tdl" style="width: 15%">강사명</td>
												<td style="width: 35%"><input name="username"
													type="text" value="${cvo.username}" class="form-control"
													style="width: 180px"></td>

												<td class="tdl" style="width: 15%">연락처</td>

												<td style="width: 35%"><input name="mobile" type="text"
													value="${cvo.mobile}" class="form-control"
													style="width: 180px" maxlength="11"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
											</tr>
											<tr>

												<td class="tdl" style="width: 15%">아이디</td>
												<td style="width: 35%"><input name="userid" type="text"
													value="${cvo.userid}" class="form-control"
													style="width: 180px"
													<c:if test="${ empty cvo.userid }">readonly</c:if>></td>

												<td class="tdl" style="width: 15%">비번</td>

												<td style="width: 35%"><input name="userpw" type="text"
													value="${cvo.userpw}" class="form-control"
													style="width: 180px"></td>

											</tr>

											<tr>

												<td class="tdl" style="width: 15%">이메일</td>
												<td style="width: 35%"><input name="email" type="text"
													value="${cvo.email}" class="form-control"
													style="width: 180px"></td>

												<td class="tdl" style="width: 15%">생년월일(YYYYMMDD)</td>

												<td style="width: 35%"><input name="birthyyyymmdd"
													type="text" value="${cvo.birthyyyymmdd}"
													class="form-control" style="width: 180px" maxlength="8"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

											</tr>


											<tr>

												<td class="tdl" style="width: 15%">닉네임</td>
												<td style="width: 35%"><input name="nickname"
													type="text" value="${cvo.nickname}" class="form-control"
													style="width: 180px"></td>

												<td class="tdl" style="width: 15%">프로필이미지</td>
												<td style="width: 35%"></td>

											</tr>




											<tr>

												<td class="tdl" style="width: 15%">관심분야</td>
												<td style="width: 85%" colspan="3"><c:forEach
														var="listview" items="${listview}" varStatus="status">
${listview.ucodeid} / ${listview.code1} / ${listview.code2} / ${listview.code3} / ${listview.codename} <br>
										</c:forEach></td>

											</tr>
											
											
											<tr>

												<td class="tdl" style="width: 15%">수강과정</td>
												<td style="width: 85%" colspan="3"><c:forEach
														var="suclist" items="${suclist}" varStatus="status">
${suclist.title} / ${suclist.wdate} <br>
										</c:forEach></td>

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

		if (document.form1.username.value == '') {
			alert('이름을 입력하세요');
			document.form1.username.focus();
		} else {

			if (document.form1.mobile.value == '') {
				alert('강좌분류를 입력하세요');
				document.form1.mobile.focus();
			} else {
				if (document.form1.userid.value == '') {
					alert('아이디를 입력하세요');
					document.form1.userid.focus();
				} else {
					if (document.form1.userpw.value == '') {
						alert('비번을 입력하세요');
						document.form1.userpw.focus();
					} else {
						
						document.form1.submit();
													

												
					}
				}
			}

		}

	}

	function fn_formRtn() {
		document.formList.submit();

	}
</script>


<form name="formList" action="studentList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />