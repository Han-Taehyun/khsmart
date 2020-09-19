<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 40px; display: inline-block; width: 100%;'>
		<form id="form1" name="form1" method="post">
			<input type="hidden" name="orderKeyword" id="orderKeyword"
				value="<c:out value="${fn:trim(searchVO.orderKeyword)}" />" /> <input
				type="hidden" name="id" id="id" value="" />


			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">진도율리스트</h2>
						<div class="pull-right" style="padding-top: 10px">

							<ul class="list-unstyled" style="width: 100%">
								<li style="float: left;"><input type="checkbox"
									name="searchType" value="lcode"
									<c:if test="${fn:indexOf(searchVO.searchType, 'lcode')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">코드</label>&nbsp;&nbsp;

									<input type="checkbox" name="searchType" value="uid1"
									<c:if test="${fn:indexOf(searchVO.searchType, 'uid1')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">회원아이디</label>&nbsp;&nbsp;
								</li>
								<li style="float: left;"><input type="text"
									style="width: 150px; height: 28px; padding: 0px"
									name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'>
								</li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button> <!--  button type="button" class="btn btn-orange" onclick="fn_formGo()">신규</button -->

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


											<th style='width:6%'>#</th>


											<th style='width: 20%'>강좌명</th>

											<th style='width: 20%'>강의명</th>



											<th style='width:6%'>아이디</th>

											<th style='width:6%'>수강시간(분)</th>

											<th style='width:6%'>강의 RunTime</th>

											<th style='width:6%'>권장 RunTime</th>



											<th style='width: *'>진도율</th>





										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">

											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><c:out value="${listview.title}" /></td>
												<td><c:out value="${listview.cptitle}" /></td>

												<td><c:out value="${listview.usid}" /></td>

												<td><c:out value="${listview.runtime}" /></td>


												<td><c:out value="${listview.cpruntime}" /></td>

												<td><c:out value="${listview.studtime}" />/<c:out
														value="${listview.runtime}" /></td>


												<td style="font-size: 12px"><span class='text-muted'><c:out
															value="${listview.rate}" />%</span>
													<div class="progress">
														<div class="progress-bar progress-bar-primary"
															role="progressbar"
															aria-valuenow="<c:out value="${listview.rate}" />"
															aria-valuemin="0" aria-valuemax="100"
															style="width: <c:out value="${listview.rate}" />%"></div>
													</div></td>




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

		<script>
			function fn_formSubmit() {
				document.form1.submit();
			}
		</script>

		<script>
			function fn_orderKey(_a) {
				document.form1.orderKeyword.value = _a;
				document.form1.submit();
			}
		</script>


		<script>
			function fn_formGo() {
				location.href = "etest2Form";
			}
		</script>

		<script>
			function fn_readGo(_a) {
				document.form1.id.value = _a;
				document.form1.action = "etest2Read";
				document.form1.submit();
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