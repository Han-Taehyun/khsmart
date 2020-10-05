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
						<h2 class="title pull-left">수강신청 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">



								<li style="float: left; padding-right: 30px"><select
									id="selectlcode" style="width: 300px; padding: 10px"
									name="code2">
										<option value="">::강좌 선택::</option>
										<c:forEach var="courseList" items="${courseList}"
											varStatus="status">
											<option
												<c:if test="${courseList.cosn eq searchVO.code2}">selected</c:if>
												value=<c:out value="${courseList.cosn}"/>><c:out
													value="${courseList.cotitle}" /></option>
										</c:forEach>
								</select></li>



								<li style="float: left;"><input type="radio"
									id="searchType" name="searchType" value="username"
									<c:if test="${fn:indexOf(searchVO.searchType, 'username')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">수강생명</label>&nbsp;&nbsp;

									<input type="radio" name="searchType" value="userid"
									<c:if test="${fn:indexOf(searchVO.searchType, 'userid')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">수강생아이디</label>&nbsp;&nbsp;</li>


								<li style="float: left;"><input type="text"
									style="width: 200px; height: 28px" id="searchKeyword"
									name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'
									onkeydown="if(event.keyCode == 13) { fn_formSubmit();}"></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>

									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">수강신청대행</button>
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

											<th>수강생</th>
											<th>강좌명</th>
											<th>구매가</th>

											<th>결제타입</th>

											<th>신청일자</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="courseserList" items="${courseserList}"
											varStatus="status">
											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>

												<td>${courseserList.username}( ${courseserList.userid}
													)</td>
												<td>${courseserList.title}</td>
												<td><fmt:formatNumber value="${courseserList.price}"
														pattern="\#,###" /></td>

												<td>${courseserList.billtype}</td>

												<td>${courseserList.wdate}</td>

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
    document.form1.action = "CosUserList";
    document.form1.submit();
  }
</script>
<script>
  function fn_formGo() {
    document.form1.action = "CosUserForm";
    document.form1.submit();
  }
</script>
<!-- END CONTENT -->
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />