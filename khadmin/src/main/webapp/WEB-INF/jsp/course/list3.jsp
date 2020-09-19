<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<!-- START CONTENT -->
<form id="form1" name="form1" method="post" action="CosUserList">
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
						<h2 class="title pull-left">패키지 신청 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
								<li style="float: left;"><input type="radio"
									id="searchType" name="searchType" value="title"
									<c:if test="${fn:indexOf(searchVO.searchType, 'title')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">강좌명</label>&nbsp;&nbsp;
									<input type="radio" name="searchType" value="coid"
									<c:if test="${fn:indexOf(searchVO.searchType, 'coid')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">강좌아이디</label>&nbsp;&nbsp;</li>
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
											<th style="width:8%">#</th>

											<th style="width:10%">수강생</th>
											<th style="width:30%">패키지명</th>
											<th style="width:10%">구매가</th>
											<th style="width:10%">신청일자</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${courseList}" varStatus="status">
											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>

												<td>${list.username} ( ${list.userid} )</td>
												<td><a href="courseRead?sn=${list.sn}"><c:out
															value="${list.pkgtitle}" /></a></td>
												<td><fmt:formatNumber value="${list.price}"
														pattern="\#,###" /></td>
												<td>${list.wdate}</td>
												
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
    document.form1.action = "PkgUserList";
    document.form1.submit();
  }
</script>
<script>
  function fn_formGo() {
    document.form1.action = "courseForm";
    document.form1.submit();
  }
</script>
<!-- END CONTENT -->
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />