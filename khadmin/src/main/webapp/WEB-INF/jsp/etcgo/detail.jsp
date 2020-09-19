<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" id="form1" role="form" action="etcgoDelete" method="post" enctype="multipart/form-data">

	<input name="sn" id="sn" type="hidden" value="${etcgo.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">




				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">기관 상세정보</h2>
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


										<td class="tdl" style="width: 15%">기관명</td>
										<td style="width: 35%"><input name="elsname" id="elsname"
											type="text" class="form-control" value="${etcgo.elsname}"></td>




										<td class="tdl" style="width: 15%">고유번호</td>
										<td style="width: 35%"><input name="comregno" id="comregno"
											type="text" class="form-control" value="${etcgo.comregno}"></td>

									</tr>
									
									<tr>

										<td class="tdl" style="width: 15%">계산서 이메일</td>
										<td style="width: 35%"><input name="email" id="email"
											type="text" class="form-control" value="${etcgo.email}"></td>
										




										<td class="tdl" style="width: 15%">대표자</td>
										<td style="width: 35%"><input name="chief" type="text"
											class="form-control" value="${etcgo.chief}"></td>

									</tr>
									
									<tr>

										<td class="tdl" style="width: 15%">담당자명</td>
										<td style="width: 35%"><input name="ddname" id="ddname"
											type="text" class="form-control" value="${etcgo.ddname}"></td>
										




										<td class="tdl" style="width: 15%">담당자연락처</td>
										<td style="width: 35%"><input name="ddphone" id="ddphone"
											type="text" class="form-control" value="${etcgo.ddphone}"></td>

									</tr>
									
									<tr>

										<td class="tdl" style="width: 15%">담당자 이메일</td>
										<td style="width: 35%"><input name="email2" id="email2"
											type="text" class="form-control" value="${etcgo.email2}"></td>
										




										<td class="tdl" style="width: 15%">기관연락처</td>
										<td style="width: 35%"><input name="phone" id="phone"
											type="text" class="form-control" value="${etcgo.phone}"></td>

									</tr>
									
									

									


									<tr style="border-top: 2px solid #999">


										<td class="tdl" style="width: 15%">지번주소</td>
										<td style="width: *" colspan="3">
										
										<input type="text"
											name="zipcode" id="zipcode" style="width:90px;height:31px;padding-left:3px"
											value="${etcgo.zipcode}">
										
										<input type="text"
											name="elsjiaddr" id="elsjiaddr" style="width:70%;height:31px;padding-left:3px"
											value="${etcgo.elsjiaddr}">
											<span onclick="sample4_execDaumPostcode()" 
											style="cursor:pointer;border:1px solid #888;margin-left:20px;padding:5px;background-color:#f1f1f1">주소찾기</span></td>
									</tr>

									<tr style="">


										<td class="tdl" style="width: 15%">도로주소</td>
										<td style="width: *" colspan="3"><input type="text"
											name="elsroaddr" id="elsroaddr" style="width:70%;height:31px;padding-left:3px"
											value="${etcgo.elsroaddr}">
											<span onclick="sample4_execDaumPostcode()" 
											style="cursor:pointer;border:1px solid #888;margin-left:20px;padding:5px;background-color:#f1f1f1">주소찾기</span></td>
									</tr>
									
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode;
                document.getElementById("elsroaddr").value = roadAddr;
                document.getElementById("elsjiaddr").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
				/*
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }
				*/

                //var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                /*
				if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
				*/
            }
        }).open();
    }
</script>


									<tr>


										<td class="tdl" style="width: 15%">사업자등록증 이미지</td>
										<td style="width: 35%" >
										<input type="file"
											name="regimgFile"> <c:if
												test="${not empty etcgo.regimg}">
												<img src="/images/${etcgo.regimg}"
													style="width: 100px">
											</c:if></td>

									


										<td class="tdl" style="width: 15%">-</td>
										<td style="width:35%" >-</td>

									</tr>



								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-primary"
								onclick="fn_formRtn()">목록</button>

							<button id="modalActivate" type="submit" class="btn btn-purple"
								data-toggle="modal" data-target="#myModal">삭제</button>

							<button class="btn btn-danger" type="button" onclick="fn_formSv()">저장</button>

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
	
	function fn_formSv() {
		document.form1.action = "etcgoSave";
		document.form1.submit();
	}
</script>

<form name="formList" action="etcgoList" method="post">

		<input
		type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


