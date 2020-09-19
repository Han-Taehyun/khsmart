<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="tutorList">

	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">강사목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">


								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px">
									<select class="form-control" name="utjcode2" id="utjcode2"
									style="width: 350px; margin-right: 10px">

										<option value="0">::강사 매칭된 직업 목록 중 선택::</option>

										<c:forEach var="listrel2" items="${listrel2}"
											varStatus="status">

											<option value="${listrel2.utjcode2}"
												<c:if test="${ param.utjcode2 eq listrel2.utjcode2}">selected</c:if>>
												${listrel2.utjcode1}</option>

										</c:forEach>

								</select>&nbsp;&nbsp;
								</li>
								<li style="float: left;"></li>






								<li style="float: left;"><input type="checkbox"
									id="searchType" name="searchType" value="username"
									<c:if test="${fn:indexOf(searchVO.searchType, 'username')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">이름</label>&nbsp;&nbsp;

									<input type="checkbox" name="searchType" value="userid"
									<c:if test="${fn:indexOf(searchVO.searchType, 'userid')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">아이디</label>&nbsp;&nbsp;
								</li>
								<li style="float: left;"><input type="text"
									style="width: 150px; height: 31px" id="searchKeyword"
									name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'
									onkeydown="if(event.keyCode == 13) { fn_formSubmit();}">
								</li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">신규</button> <img src="/images/excel.jpg"
									width="27px"
									style="cursor: pointer; border: 3px solid #11ee33; margin-left: 10px"
									onclick="fn_formExSubmit()">

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
											<th style="width: 5%">#</th>

											<th style="width: 10%">직업1</th>
											<th style="width: 10%">직업2</th>
											<th style="width: 10%">직업3</th>

											<th style="width: 8%">아이디</th>
											<th style="width: 8%">이름</th>
											<th style="width: 8%">이메일</th>
											<th style="width: 8%">연락처</th>
											<th style="width: 8%">생년월일</th>

											<th style="width: 8%">강사유형</th>
											<th style="width: *">활동지역</th>

											<!--  th style="width:*">주소</th -->

											<th style="width: 5%">강의계획안1</th>
											<th style="width: 5%">강의계획안2</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><c:out value="${listview.utjcode1}" /></td>
												<td><c:out value="${listview.utjcode2}" /></td>
												<td><c:out value="${listview.utjcode3}" /></td>

												<td><a href="tutorRead?sn=${listview.sn}">${listview.userid}</a>
												</td>
												<td><c:out value="${listview.username}" /></td>
												<td><c:out value="${listview.email}" /></td>
												<td><c:out value="${listview.mobile}" /></td>
												<td><c:out value="${listview.birthyyyymmdd}" /></td>

												<td><c:out value="${listview.tutortype}" /></td>
												<td><c:out value="${listview.activearea}" /></td>



												<td><c:if test="${not empty listview.ttfile}">
														<a href=javascript:fileDown('/images/${listview.ttfile}')>DN</a>
													</c:if></td>
												<td><c:if test="${not empty listview.ttppt}">
														<a href=javascript:fileDown('/images/${listview.ttppt}')>DN</a>
													</c:if></td>


											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>


							<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />



						</div>
					</div>
				</section>
			</div>





		</section>
	</section>
	<!-- END CONTENT -->


</form>

<script>
function fileDown(_file){ location.href = "/ultari/FileDown?filecol="+_file; }
</script>

<script>
function fn_formSubmit() {
	document.form1.action="tutorList";
	document.form1.submit();
}
function fn_formGo() {
	document.form1.action = "tutorForm";
	document.form1.submit();
	}
</script>

<script>
	function fn_formExSubmit() {
		document.form1.action = "tutorExcel";
		document.form1.target = "_hid_edumgt_";
		document.form1.submit();
	}
</script>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />