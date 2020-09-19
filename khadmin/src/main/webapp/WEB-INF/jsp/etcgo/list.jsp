<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="etcgoList">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" /> 
		 <input type="hidden" name="srch" id="srch"
		value="SRCH" />

	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">기관 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">


								

								
								<li style="float: left; inline-block; vertical-align: middle; padding-top: 2px;margin-right:10px">
								<input type="text"
									style="width: 200px; height: 33px;padding:2px" id="elsname"
									name="elsname"
									value="${param.elsname}"
									onkeydown="if(event.keyCode == 13) { fn_formSubmit();}"
									placeholder="기관명을 입력하세요">
								</li>
								
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
											<!--  th>사업자번호</th -->
											<th>기관명</th>
											
											<th>주소</th>
											<th>우편번호</th>
											<th>기관 전화번호</th>
											
											
											
											<th>대표자</th>
											<th>계산서 이메일</th>
											
											<th>담당자명</th>
											<th>담당자연락처</th>
											
											
											<th>담당자 이메일</th>

											
											
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<!--  td><c:out value="${listview.comregno}" /></td -->
												
												<td><a href="etcgoRead?sn=${listview.sn}">${listview.elsname}</a></td>
												
												<td><c:out value="${listview.elsjiaddr}" /></td>
												<td><c:out value="${listview.zipcode}" /></td>
												<td><c:out value="${listview.phone}" /></td>
												
												<td><c:out value="${listview.chief}" /></td>
												<td><c:out value="${listview.email}" /></td>
												
												<td><c:out value="${listview.ddname}" /></td>
												<td><c:out value="${listview.ddphone}" /></td>

												

												<td><c:out value="${listview.email2}" /></td>
												
												
												
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
	document.form1.action="etcgoList";
	document.form1.submit();
}
function fn_formGo() {
document.form1.action = "etcgoForm";
document.form1.submit();
}
</script>

<form id="form2" name="form2" method="post" action="etcgoExcel" target="_hid_edumgt_">
</form>

<script>
	function fn_formExSubmit() {
		
		document.form2.submit();
	}
</script>

<!-- END CONTENT -->

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
