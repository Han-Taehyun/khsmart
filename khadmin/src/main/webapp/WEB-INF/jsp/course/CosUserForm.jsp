<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="CosUserSave" method="post"
	enctype="multipart/form-data">




	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">수강신청 대행</h2>
						<div class="actions panel_actions pull-right">
							
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">
											<tr>

												<td class="tdl" style="width: 15%">강좌 선택</td>
												<td style="width: 35%"><select name="courseid"
													style="width: 300px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">
														<option value="">::선택::</option>
														<c:forEach var="courseList" items="${courseList}"
															varStatus="status">
															<option value="${courseList.cosn}">${courseList.cotitle}</option>
														</c:forEach>

												</select></td>


												<td class="tdl" style="width: 15%">수강생아이디</td>
												<td style="width: 35%"><input id="userid"
													name="userid" type="text" value=""
													style="width: 220px; height: 30px"> <span
													onclick="winpopup()"
													style="cursor: pointer; border: 1px solid #888; margin-left: 20px; padding: 5px; background-color: #f1f1f1">학생아이디찾기</span>
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
		
		if ( document.form1.courseid.value == "" ) {
			alert("강좌를 선택하세요");
			
		} else {
			if ( document.form1.userid.value == "" ) {
				alert("아이디를 검색하세요");
				
			} else {
				
				document.form1.submit();
			}
			
		}

		

	}

	function fn_formRtn() {
		document.formList.submit();

	}
</script>

<script>
	function winpopup() {
		window.open("vwpopupuser", "_blank", "toolbar=no,scrollbars=yes, width=450, height:600");
	}
</script>


<form name="formList" action="CosUserList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />