<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />



<form id="form1" name="form1" method="post" action="StudyPostList">

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
						<h2 class="title pull-left">수강후기 목록</h2>
						<div class="pull-right" style="padding-top: 10px">
							<ul class="list-unstyled">
								<li style="float: left;"><input type="checkbox"
									name="searchType" value="title"
									<c:if test="${fn:indexOf(searchVO.searchType, 'title')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">제목</label>&nbsp;&nbsp;

									<input type="checkbox" name="searchType" value="post"
									<c:if test="${fn:indexOf(searchVO.searchType, 'post')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">내용</label>&nbsp;&nbsp;
								</li>
								<li style="float: left;"><input type="text"
									style="width: 150px; height: 31px" name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'
									onkeydown="if(event.keyCode == 13) { fn_formSubmit();}">
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
											<th style="width: 5%">#</th>





											<th style="width: 20%">강좌명</th>



											<th style="width: 10%">작성자</th>

											<th style="width: 5%">하트수</th>


											<th style="width: *">내용</th>


											<th style="width: 20%">날짜</th>




										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>


												<td><a href="javascript:fn_readGo('${listview.sn}')">${listview.title}</a></td>

												<td>${listview.userid}(${listview.username})</td>

												<td>${listview.heartnum}</td>

												<td>${listview.comment}</td>

												<td>${listview.regdate}</td>



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
		document.form1.action = "StudyPList";
		document.form1.submit();
	}
</script>



<script>
	function fn_formGo() {
		location.href = "StudyPForm";
	}
</script>

<script>
	function fn_readGo(_a) {
		document.form1.sn.value = _a;
		document.form1.action = "StudyPRead";
		document.form1.submit();
	}
</script>



<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
