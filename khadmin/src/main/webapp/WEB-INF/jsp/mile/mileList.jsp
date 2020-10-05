<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
		<form id="form1" name="form1" method="post">
			<input type="hidden" name="orderKeyword" id="orderKeyword"
				value="<c:out value="${fn:trim(searchVO.orderKeyword)}" />" /> <input
				type="hidden" name="sn" id="sn" value="" />


			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">마일리지 적립 리스트</h2>
						<div class="pull-right" style="padding-top: 10px">

							<ul class="list-unstyled" style="width: 100%">
								<li style="float: left;"><input type="checkbox"
									name="searchType" value="userid"
									<c:if test="${fn:indexOf(searchVO.searchType, 'userid')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">사용자아이디</label>&nbsp;&nbsp;

									<input type="checkbox" name="searchType" value="memo"
									<c:if test="${fn:indexOf(searchVO.searchType, 'memo')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">메모</label>&nbsp;&nbsp;
								</li>
								<li style="float: left;"><input type="text"
									style="width: 150px; height: 28px; padding: 0px"
									name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>

									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">마일리지 적립대행</button>

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


											<th>아이디</th>
											<th>이름</th>

											<th>포인트</th>

											<th>누적포인트</th>

											<th>적립일자(사용일자)</th>
											<th>메모</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">

											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td>${listview.userid}</td>

												<td>${listview.username}</td>

												<td>${listview.point}</td>

												<td>${listview.sumpoint}</td>


												<td>${listview.wdate}</td>


												<td>${listview.memo}</td>




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
				location.href = "mileForm";
			}
		</script>

		<script>
			function fn_readGo(_a) {
				document.form1.c_no.value = _a;
				document.form1.action = "mileRead";
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