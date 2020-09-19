<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<!-- START CONTENT -->
<form id="form1" name="form1" method="post" action="courseList">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" /> <input type="hidden" name="sn"
		id="sn" value="" /> <input type="hidden" name="srch" id="srch"
		value="SRCH" />
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">패키지별 강좌 목록</h2>
						<div class="actions panel_actions pull-right"
							style="">
							<ul class="list-unstyled">



								<li style="float: left;padding-top: 10px"><select id="selectlcode"
									style="width: 300px; padding-left: 10px; padding-right: 20px"
									name="code2" class="form-control m-bot15">
										<option value="">::패키지 선택::</option>
										<c:forEach var="pkgList" items="${pkgList}" varStatus="status">
											<option
												<c:if test="${pkgList.sn eq searchVO.code2}">selected</c:if>
												value=<c:out value="${pkgList.sn}"/>><c:out
													value="${pkgList.pkgtitle}" /></option>
										</c:forEach>
								</select></li>



								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">신규</button>
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

											<th>분류명</th>
											<th>강좌명</th>
											<th>기준단가</th>
											<th>등록강의수</th>
											<th>수강생수</th>
											
											<th>삭제</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${courseList}" varStatus="status">
											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>

												<td><c:out value="${list.large}" /></td>
												<td>${list.title}</td>
												<td><fmt:formatNumber value="${list.price}"
														pattern="\#,###" /></td>
												<td>${list.cpcnt}</td>
												<td>${list.cucnt}</td>
												
												
												
												<td>
												
												
												
												<input type="button" value="삭제" onclick="deletePkgCos('${list.pkgcosn}')"></td>

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
</form>
<form name="form2">
<input type="hidden" name="pkgcosn">
</form>
<script>
	function fn_formSubmit() {
		document.form1.action = "PackCosList";
		document.form1.submit();
	}
</script>
<script>
	function fn_formGo() {
		document.form1.action = "PackCosForm";
		document.form1.submit();
	}
</script>
<script>
	function deletePkgCos(_param) {
		
		document.form2.pkgcosn.value = _param;
		document.form2.action = "PackCosDel";
		document.form2.target = "_hid_edumgt_";
		document.form2.submit();
	}
</script>
<!-- END CONTENT -->
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />