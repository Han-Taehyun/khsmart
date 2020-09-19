<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="utprgform" id="utprgform" role="form" action="ddhumanSave"
	method="post" enctype="multipart/form-data">

	<input name="sn" id="sn" type="hidden" value="${usert.sn}">
	
	<input name="usertype" id="usertype" type="hidden" value="DD">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>

			<div class="col-lg-12">


				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">기관담당자 상세정보</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								href="#section-settings"></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">

						

						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">
									<tr>


										<td class="tdl" style="width: 15%">이름</td>

										<td style="width: 35%"><input name="username" id="username"
											type="text" class="form-control" value="${usert.username}"></td>


										<td class="tdl" style="width: 15%">아이디/비번</td>
										<td style="width: 35%"><input name="userid" id="userid"
											type="text" value="${usert.userid}" style="width:49%;height:33px;border:1px solid #ee3333"
											placeholder="아이디 입력">
										<input name="userpw" id="userpw"
											type="text" value="${usert.userpw}" style="width:49%;height:33px;border:1px solid #ee3333"
											placeholder="비번 입력"></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">직책</td>
										<td style="width: 35%"><input name="tchjik"
											id="tchjik" type="text" class="form-control"
											value="${usert.tchjik}"></td>




										<td class="tdl" style="width: 15%">-</td>
										<td style="width: 35%"><input name="birthyyyymmdd" type="hidden"
											class="form-control" value="${usert.birthyyyymmdd}"></td>

									</tr>
									
									<tr>


										<td class="tdl" style="width: 15%">연락처1</td>
										<td style="width: 35%"><input name="mobile"
											id="mobile" type="text" class="form-control"
											value="${usert.mobile}"></td>




										<td class="tdl" style="width: 15%">연락처2</td>
										<td style="width: 35%"><input name="tchphone2" type="text"
											class="form-control" value="${usert.tchphone2}"></td>

									</tr>

									<tr>


										<td class="tdl" style="width: 15%">기관</td>
										<td style="width: 35%">
										
										<input name="etcgosn" id="etcgosn" type="text"
											 value="${usert.etcgosn}" style="width:45px;height:33px;">
										
										<input name="elsname" id="elsname" type="text"
											 value="${usert.elsname}" style="width:55%;height:33px;">
											 
											<span onclick="fn_srchSch()" 
											style="cursor:pointer;border:1px solid #888;margin-left:20px;padding:5px;background-color:#f1f1f1">기관찾기</span>
											</td>




										<td class="tdl" style="width: 15%">이메일</td>
										<td style="width: 35%"><input name="email" type="text"
											class="form-control" value="${usert.email}"></td>

									</tr>
									
									


									

								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-primary"
								onclick="fn_formRtn()">목록</button>

							<button id="modalActivate" type="submit" class="btn btn-danger"
								data-toggle="modal" data-target="#myModal">저장</button>

						</div>


					</div>
			</div>
			</div>
		</section>


		</div>

	</section>
	</section>
	<!-- END CONTENT -->

</form>



<script>
		function fn_formRtn() {
			document.formList.submit();

		}
</script>

<script>
		function fn_srchSch() {
			
			if ( document.getElementById("elsname").value == "" ) {
				alert("검색 대상 기관명을 입력하세요.");
				document.getElementById("elsname").focus();
			}else{
			
			document.formPP.elsname.value=document.getElementById("elsname").value;
			
			window.open("srchsch2", "_pp_srch", "toolbar=no,scrollbars=yes,resizable=yes,left=0,top=0,fullscreen=yes");
			
			document.formPP.submit();
			}
		}
</script>

<form name="formPP" action="srchsch2" method="post" target="_pp_srch">
<input type="hidden" name="elsname" value="">
</form>


<form name="formList" action="ddhumanList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


