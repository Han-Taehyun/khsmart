<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper" style='margin-top: 40px; display: inline-block; width: 100%; '>
		<form id="form1" name="form1" method="post">
			<input type="hidden" name="orderKeyword" id="orderKeyword" 
			value="<c:out value="${fn:trim(searchVO.orderKeyword)}" />" />

			<input type="hidden" name="c_no" id="c_no" value="" />


			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">쿠폰사용 리스트</h2>
						<div class="pull-right" style="padding-top:10px">

							<ul class="list-unstyled" style="width:100%">
								<li style="float: left;">
									<input type="checkbox" name="searchType" value="c_id" <c:if test="${fn:indexOf(searchVO.searchType, 'c_id')!= -1}">checked="checked"</c:if>
									/>
									<label class="chkselect" for="searchType1">사용자아이디</label>&nbsp;&nbsp;

									<input type="checkbox" name="searchType" value="c_number" <c:if test="${fn:indexOf(searchVO.searchType, 'c_number')!=-1}">checked="checked"</c:if>
									/>
									<label class="chkselect" for="searchType2">쿠폰번호</label>&nbsp;&nbsp;
								</li>
								<li style="float: left;">
									<input type="text" 
									style="width:150px;height:28px;padding:0px" name="searchKeyword" 
									value='<c:out value="${searchVO.searchKeyword}"/>'
									 >
								</li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary " onclick="fn_formSubmit()">검색</button>
									<!-- button type="button" class="btn btn-orange" onclick="fn_formGo()">신규</button -->

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
											
											<th>쿠폰번호</th>
											
											<th>쿠폰제목</th>
											
											<th>사용일자</th>
											
											<th>사용여부</th>
											
											<th>사용내역</th>
											
											
											

											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}" varStatus="status">

											<tr>
												<td>
													<c:out value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>
												
												<td>
													<c:out value="${listview.c_id}" />
												</td>
												
												<td>
													<c:out value="${listview.mb_name}" />
												</td>

												<td>
													<c:out value="${listview.c_number}" />
												</td>
												
												<td>
													<c:out value="${listview.cu_subject}" />
												</td>
												
												
												<td>
													<c:out value="${listview.c_datetime}" />
												</td>
												
												<td>
													
													${listview.ccc1}/${listview.ccc2}
												</td>
												
												
												<td>
													
													${listview.cu_memo} / ${listview.p_num}
												
												</td>
												
				
												

											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>



							<div class="col-md-12 col-sm-12 col-xs-12" style='border-top:2px solid #d8d8d8;padding-top:20px;'>


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
				location.href = "coupon2Form";
			}
		</script>

		<script>
			function fn_readGo(_a) {
				document.form1.c_no.value = _a;
				document.form1.action = "coupon2Read";
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