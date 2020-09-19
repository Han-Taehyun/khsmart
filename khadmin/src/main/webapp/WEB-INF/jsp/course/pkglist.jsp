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
						<h2 class="title pull-left">패키지 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
								<li style="float: left;"><input type="radio"
									id="searchType" name="searchType" value="pkgtitle"
									<c:if test="${fn:indexOf(searchVO.searchType, 'pkgtitle')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">패키지명</label>&nbsp;&nbsp;
									<input type="radio" name="searchType" value="pkgmemo"
									<c:if test="${fn:indexOf(searchVO.searchType, 'pkgmemo')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">패키지설명</label>&nbsp;&nbsp;</li>
								<li style="float: left;"><input type="text"
									style="width: 200px; height: 28px" id="searchKeyword"
									name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'
									onkeydown="if(event.keyCode == 13) { fn_formSubmit();}"></li>
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

											<th>패키지명</th>
											
											<th>금액</th>

											<th>패키지신청수</th>

											<th>등록강좌수</th>

											<th>찜 회원수</th>




										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${courseList}" varStatus="status">
											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>

												<td><a href="PackageRead?sn=${list.sn}">${list.pkgtitle}</a></td>
												
												<td><fmt:formatNumber value="${list.pkgprice}"
														pattern="\#,###" /></td>



												<td>${list.pucnt}</td>

												<td>${list.cscnt}</td>
												<td>${list.pzcnt}</td>

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
<script>
	function fn_formSubmit() {
		document.form1.action = "PackageList";
		document.form1.submit();
	}
</script>
<script>
	function fn_formGo() {
		document.form1.action = "PackageForm";
		document.form1.submit();
	}
</script>
<!-- END CONTENT -->
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />