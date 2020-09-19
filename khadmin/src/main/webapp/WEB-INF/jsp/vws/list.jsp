<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="vwsList">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" /> <input type="hidden" name="srch"
		id="srch" value="SRCH" />

	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">설문결과 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">

								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px; padding-right: 10px">
									<select class="form-control" name="svname" id="svname"
									style="width: 250px">

										<option value="0">::설문지 선택::</option>

										<c:forEach var="listrel3" items="${listrel3}"
											varStatus="status">

											<option value="${listrel3.svname}"
												<c:if test="${ param.svname eq listrel3.svname}">selected</c:if>>
												${listrel3.svname}</option>

										</c:forEach>

								</select>&nbsp;&nbsp;
								</li>

								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px; padding-right: 10px">
									<select class="form-control" name="cosn" id="cosn"
									style="width: 250px">

										<option value="0">::강좌 선택::</option>

										<c:forEach var="listrel1" items="${listrel1}"
											varStatus="status">

											<option value="${listrel1.cosn}"
												<c:if test="${ param.cosn eq listrel1.cosn}">selected</c:if>>
												${listrel1.title}</option>

										</c:forEach>

								</select>&nbsp;&nbsp;
								</li>

								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>

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

											<th style="width: 15">강좌명</th>


											<th style="width: 10%">수강생</th>




											<th style="width: 15%">설문명</th>
											<th style="width: 10">강사명</th>
											



										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><c:out value="${listview.protitle}" /></td>
												<td>${listview.elsname}</td>



												<td>${listview.svname}</td>

												<td><a
													href="javascript:fn_formD2('${listview.surveyfk}','${listview.classnofk}','${listview.protitle}','${listview.svname}','${listview.tutorname}','${listview.stuname}')">
														${listview.tutorname}</a></td>

												



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
function fn_formSubmit() {
	document.form1.action = "vwsList";
	document.form1.submit();
	}
</script>

<script>
	function fn_formGo() {
		document.form1.action = "vwsForm";
		document.form1.submit();
	}
</script>

<script>
	function fn_formD1(_svy,_uid,_cls,a,b,c,d) {
		document.dtlform.svy.value = _svy;
		document.dtlform.cls.value = _cls;
		document.dtlform.uid.value = _uid;
		
		document.dtlform.protitle.value = a;
		document.dtlform.svname.value = b;
		document.dtlform.tutorname.value = c;
		document.dtlform.stuname.value = d;
		
		document.dtlform.action = "vwsReadUser";
		document.dtlform.submit();
	}
</script>

<script>
	function fn_formD2(_svy,_cls,a,b,c,d) {
		document.dtlform.svy.value = _svy;
		document.dtlform.cls.value = _cls;
		
		document.dtlform.protitle.value = a;
		document.dtlform.svname.value = b;
		document.dtlform.tutorname.value = c;
		document.dtlform.stuname.value = d;
		
		document.dtlform.action = "vwsReadUserList";
		document.dtlform.submit();
	}
</script>

<form name="dtlform" method="post">
	<input type="hidden" name="svy"> <input type="hidden"
		name="cls"> <input type="hidden" name="uid"> <input
		type="hidden" name=protitle> <input type="hidden" name=svname>
	<input type="hidden" name=tutorname> <input type="hidden"
		name=stuname>
</form>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
