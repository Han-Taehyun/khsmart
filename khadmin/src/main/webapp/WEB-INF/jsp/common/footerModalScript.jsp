<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="requestPath"
	value="${requestScope['javax.servlet.forward.request_uri']}" />

<!-- General section box modal start -->
<div class="modal" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="ultraModal-Label" aria-hidden="true">
	<div class="modal-dialog modal-side modal-bottom-right">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #eee">
				<h5 class="modal-title" style="font-weight: 700; text-align: left">[
					이용안내 ]</h5>
			</div>
			<div class="modal-body"
				style="font-weight: 700; text-align: center; height: 80px; padding-top: 20px">
			</div>
			
			<div class="img-loader"
				style="text-align: center; height: 50px; width:100%;padding-bottom:10px">
				<img src="images/loader.gif">
			</div>
			
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-primary" type="button"
					id="modalCloseButton">닫기</button>
			</div>
		</div>
	</div>
</div>

<c:if test="${fn:indexOf(requestPath, 'utprogram') != -1}">
	<script>
		$(function() {
			//모달을 전역변수로 선언
			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			/* 
			$('.onlyAlphabetAndNumber').keyup(function(event){
			    if (!(event.keyCode >=37 && event.keyCode<=40)) {
			        var inputVal = $(this).val();
			        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
			    }
			});
			 
			$(".onlyHangul").keyup(function(event){
			    if (!(event.keyCode >=37 && event.keyCode<=40)) {
			        var inputVal = $(this).val();
			        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
			    }
			});
			
			$(".onlyNumber").keyup(function(event){
			    if (!(event.keyCode >=37 && event.keyCode<=40)) {
			        var inputVal = $(this).val();
			        $(this).val(inputVal.replace(/[^0-9]/gi,''));
			    }
			});
			 
			
			$('#id').keyup(function(event){
			     
			    var divId = $('#divId');
			     
			    if($('#id').val()==""){
			        divId.removeClass("has-success");
			        divId.addClass("has-error");
			    }else{
			        divId.removeClass("has-error");
			        divId.addClass("has-success");
			    }
			});
			 
			$('#password').keyup(function(event){
			     
			    var divPassword = $('#divPassword');
			     
			    if($('#password').val()==""){
			        divPassword.removeClass("has-success");
			        divPassword.addClass("has-error");
			    }else{
			        divPassword.removeClass("has-error");
			        divPassword.addClass("has-success");
			    }
			});
			 
			$('#passwordCheck').keyup(function(event){
			     
			    var passwordCheck = $('#passwordCheck').val();
			    var password = $('#password').val();
			    var divPasswordCheck = $('#divPasswordCheck');
			     
			    if((passwordCheck=="") || (password!=passwordCheck)){
			        divPasswordCheck.removeClass("has-success");
			        divPasswordCheck.addClass("has-error");
			    }else{
			        divPasswordCheck.removeClass("has-error");
			        divPasswordCheck.addClass("has-success");
			    }
			});
			 
			$('#name').keyup(function(event){
			     
			    var divName = $('#divName');
			     
			    if($.trim($('#name').val())==""){
			        divName.removeClass("has-success");
			        divName.addClass("has-error");
			    }else{
			        divName.removeClass("has-error");
			        divName.addClass("has-success");
			    }
			});
			 
			$('#nickname').keyup(function(event){
			     
			    var divNickname = $('#divNickname');
			     
			    if($.trim($('#nickname').val())==""){
			        divNickname.removeClass("has-success");
			        divNickname.addClass("has-error");
			    }else{
			        divNickname.removeClass("has-error");
			        divNickname.addClass("has-success");
			    }
			});
			 
			$('#email').keyup(function(event){
			     
			    var divEmail = $('#divEmail');
			     
			    if($.trim($('#email').val())==""){
			        divEmail.removeClass("has-success");
			        divEmail.addClass("has-error");
			    }else{
			        divEmail.removeClass("has-error");
			        divEmail.addClass("has-success");
			    }
			});
			 
			$('#phoneNumber').keyup(function(event){
			     
			    var divPhoneNumber = $('#divPhoneNumber');
			     
			    if($.trim($('#phoneNumber').val())==""){
			        divPhoneNumber.removeClass("has-success");
			        divPhoneNumber.addClass("has-error");
			    }else{
			        divPhoneNumber.removeClass("has-error");
			        divPhoneNumber.addClass("has-success");
			    }
			});
			 */

			//------- validation 검사
			$("form").submit(function(event) {

				if ($('#proid').val() == "") {

					modalContents.text("프로그램 아이디를 입력하여 주시기 바랍니다.");
					modal.modal('show');

					$('#proid').focus();
					return false;
				} else {
					modalContents.text("저장 작업 중입니다..");
				}

				if ($('#protitle').val() == "") {

					modalContents.text("프로그램 타이틀을 입력하여 주시기 바랍니다.");
					modal.modal('show');

					$('#protitle').focus();
					return false;
				} else {
					modalContents.text("저장 작업 중입니다..");
				}

				/*
				var provision = $('#provision');
				var memberInfo = $('#memberInfo');
				var divId = $('#divId');
				var divPassword = $('#divPassword');
				var divPasswordCheck = $('#divPasswordCheck');
				var divName = $('#divName');
				var divNickname = $('#divNickname');
				var divEmail = $('#divEmail');
				var divPhoneNumber = $('#divPhoneNumber');
				 
				
				if($('#provisionYn:checked').val()=="N"){
				    modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
				    modal.modal('show'); //모달 띄우기
				     
				    provision.removeClass("has-success");
				    provision.addClass("has-error");
				    $('#provisionYn').focus();
				    return false;
				}else{
				    provision.removeClass("has-error");
				    provision.addClass("has-success");
				}
				 
				//개인정보취급방침
				if($('#memberInfoYn:checked').val()=="N"){
				    modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    memberInfo.removeClass("has-success");
				    memberInfo.addClass("has-error");
				    $('#memberInfoYn').focus();
				    return false;
				}else{
				    memberInfo.removeClass("has-error");
				    memberInfo.addClass("has-success");
				}
				 
				//아이디 검사
				if($('#id').val()==""){
				    modalContents.text("아이디를 입력하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    divId.removeClass("has-success");
				    divId.addClass("has-error");
				    $('#id').focus();
				    return false;
				}else{
				    divId.removeClass("has-error");
				    divId.addClass("has-success");
				}
				 
				//패스워드 검사
				if($('#password').val()==""){
				    modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    divPassword.removeClass("has-success");
				    divPassword.addClass("has-error");
				    $('#password').focus();
				    return false;
				}else{
				    divPassword.removeClass("has-error");
				    divPassword.addClass("has-success");
				}
				 
				//패스워드 확인
				if($('#passwordCheck').val()==""){
				    modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    divPasswordCheck.removeClass("has-success");
				    divPasswordCheck.addClass("has-error");
				    $('#passwordCheck').focus();
				    return false;
				}else{
				    divPasswordCheck.removeClass("has-error");
				    divPasswordCheck.addClass("has-success");
				}
				 
				//패스워드 비교
				if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
				    modalContents.text("패스워드가 일치하지 않습니다.");
				    modal.modal('show');
				     
				    divPasswordCheck.removeClass("has-success");
				    divPasswordCheck.addClass("has-error");
				    $('#passwordCheck').focus();
				    return false;
				}else{
				    divPasswordCheck.removeClass("has-error");
				    divPasswordCheck.addClass("has-success");
				}
				 
				//이름
				if($('#name').val()==""){
				    modalContents.text("이름을 입력하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    divName.removeClass("has-success");
				    divName.addClass("has-error");
				    $('#name').focus();
				    return false;
				}else{
				    divName.removeClass("has-error");
				    divName.addClass("has-success");
				}
				 
				
				 
				//이메일
				if($('#email').val()==""){
				    modalContents.text("이메일을 입력하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    divEmail.removeClass("has-success");
				    divEmail.addClass("has-error");
				    $('#email').focus();
				    return false;
				}else{
				    divEmail.removeClass("has-error");
				    divEmail.addClass("has-success");
				}
				 
				//휴대폰 번호
				if($('#phoneNumber').val()==""){
				    modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
				    modal.modal('show');
				     
				    divPhoneNumber.removeClass("has-success");
				    divPhoneNumber.addClass("has-error");
				    $('#phoneNumber').focus();
				    return false;
				}else{
				    divPhoneNumber.removeClass("has-error");
				    divPhoneNumber.addClass("has-success");
				}
				 */

			});

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'utpdetailForm') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("form").submit(function(event) {

				if ($('#utpsn').val() == "") {

					modalContents.text("프로그램 메인 정보를 선택후 작업하시기 바랍니다.");
					modal.modal('show');

					return false;
				} else {
					modalContents.text("저장 작업 중입니다..");
				}

				if ($('#chasi').val() == "") {

					modalContents.text("프로그램 상세 차시(교시) 번호를 입력하여 주시기 바랍니다.");
					modal.modal('show');

					$('#chasi').focus();
					return false;
				} else {
					modalContents.text("저장 작업 중입니다..");
				}

			});

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'utpdetailRead') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("form").submit(function(event) {

					modalContents.text("차시 정보 삭제 시 1,2..n 비어있는 차시가 있는지 확인하시기 바랍니다.");
					modal.modal('show');

					return false;

			});

			$('#modalCloseButton').click(function() {
				modal.modal('hide');
				document.form1.submit();
			});

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'schoolRead') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("form").submit(function(event) {

					modalContents.text("학교 정보 삭제 시 유관 정보가 있는지 확인하시기 바랍니다.");
					modal.modal('show');

					return false;

			});

			$('#modalCloseButton').click(function() {
				modal.modal('hide');
				document.form1.submit();
			});

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'utjobRead') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("form").submit(function(event) {

					modalContents.text("직업 정보 삭제 시 유관 정보가 있는지 확인하시기 바랍니다.닫기 버튼 클릭시 삭제 후 이동 합니다.");
					modal.modal('show');

					return false;

			});

			$('#modalCloseButton').click(function() {
				modal.modal('hide');
				document.form1.submit();
			});

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'tutorForm') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("form").submit(function(event) {

				if ($('#userid').val() == "") {

					modalContents.text("아이디는 필수 입력사항입니다.");
					modal.modal('show');

					return false;
				} else {
					modalContents.text("저장 작업 중입니다..");
				}
				
				if ($('#userpw').val() == "") {

					modalContents.text("비번은 필수 입력사항입니다.");
					modal.modal('show');

					return false;
				} else {
					modalContents.text("저장 작업 중입니다..");
				}

			});

			

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'tutorRead') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("form").submit(function(event) {

					modalContents.text("저장 작업 중입니다..");
					modal.modal('show');

					

			});

			$('#modalCloseButton').click(function() {
				modal.modal('hide');
				document.form1.submit();
			});

		});
	</script>

</c:if>

<c:if test="${fn:indexOf(requestPath, 'schoolList') != -1}">
	<script>
		$(function() {

			var modalContents = $(".modal-body");
			var modal = $("#myModal");

			$("#form2img").click(function() {

					modalContents.text("대용량 엑셀 데이타 저장 작업 중입니다.");
					modal.modal('show');
					
					setInterval(function(){ modal.modal('hide'); }, 5000);

					

			});

			$('#modalCloseButton').click(function() {
				modal.modal('hide');
				//document.form2.submit();
			});

		});
	</script>

</c:if>