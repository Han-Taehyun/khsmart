<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="requestPath"
	value="${requestScope['javax.servlet.forward.request_uri']}" />
<ul class='wraplist'>
	<li
		class="<c:if test="${fn:indexOf(requestPath, 'usercode') != -1}">open</c:if>
	       <c:if test="${fn:indexOf(requestPath, 'etcgo') != -1}">open</c:if>
	       <c:if test="${fn:indexOf(requestPath, 'statdash') != -1}">open</c:if>
	       <c:if test="${fn:indexOf(requestPath, 'vwtable') != -1}">open</c:if>
	       ">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">기본정보관리</span> <span
			class="arrow "></span>
	</a>
		<ul class="sub-menu">

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'statdash') != -1}">active</c:if>"
				href="statdash">대시보드</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'usercode') != -1}">active</c:if>"
				href="usercodeList">코드관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'etcgo') != -1}">active</c:if>"
				href="etcgoList">단체관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'vwtableinfo') != -1}">active</c:if>"
				href="vwtableinfoList">DB테이블목록</a></li>

		</ul>
	</li>
	<li
		class="
            <c:if test="${fn:indexOf(requestPath, 'tutor') != -1}">open</c:if>
            <c:if test="${fn:indexOf(requestPath, 'staff') != -1}">open</c:if>
		    <c:if test="${fn:indexOf(requestPath, 'student') != -1}">open</c:if>
		    <c:if test="${fn:indexOf(requestPath, 'MemberPermi') != -1}">open</c:if>
		    <c:if test="${fn:indexOf(requestPath, 'ExSaveForm') != -1}">open</c:if>
		">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">회원관리</span> <span
			class="arrow "></span>
	</a>
		<ul class="sub-menu">
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'tutor') != -1}">active</c:if>"
				href="tutorList">강사목록</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'student') != -1}">active</c:if>"
				href="studentList">수강생 관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'staff') != -1}">active</c:if>"
				href="staffList">관리자/직원관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'MemberPermi') != -1}">active</c:if>"
				href="MemberPermi">권한관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'ExSaveForm') != -1}">active</c:if>"
				href="ExSaveForm">엑셀업로드</a></li>
		</ul>
	</li>
	<li
		class="<c:if test="${fn:indexOf(requestPath, 'course') != -1}">open</c:if>
          <c:if test="${fn:indexOf(requestPath, 'chapter') != -1}">open</c:if>
          <c:if test="${fn:indexOf(requestPath, 'PackageList') != -1}">open</c:if>
          <c:if test="${fn:indexOf(requestPath, 'PackCosList') != -1}">open</c:if>
    ">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">강좌개설관리</span> <span
			class="arrow "></span>
	</a>
		<ul class="sub-menu">
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'courseList') != -1}">active</c:if>
				<c:if test="${fn:indexOf(requestPath, 'courseForm') != -1}">active</c:if>
				<c:if test="${fn:indexOf(requestPath, 'courseRead') != -1}">active</c:if>"
				href="courseList">강좌관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'chapterList') != -1}">active</c:if>"
				href="chapterList">강의관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'PackageList') != -1}">active</c:if>"
				href="PackageList">패키지관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'PackCosList') != -1}">active</c:if>"
				href="PackCosList">패키지구성관리</a></li>
		</ul>
	</li>
	<li
		class="<c:if test="${fn:indexOf(requestPath, 'coupon1') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'coupon2') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'CosUserList') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'PkgUserList') != -1}">open</c:if>
		
		"><a
		href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">결제관리</span> <span
			class="arrow "></span>
	</a>
		<ul class="sub-menu">
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'coupon1') != -1}">active</c:if>"
				href="coupon1List">쿠폰관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'coupon2') != -1}">active</c:if>"
				href="coupon2List">쿠폰사용내역</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'CosUserList') != -1}">active</c:if>"
				href="CosUserList">강좌결제내역</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'PkgUserList') != -1}">active</c:if>"
				href="PkgUserList">패키지결제내역</a></li>

		</ul></li>
	<li
		class="
		<c:if test="${fn:indexOf(requestPath, 'PostList') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'StudyPList') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'bbsList') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'calendar') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'careerList') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'RateUserList') != -1}">open</c:if>
		
		">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">운영관리</span> <span
			class="arrow "></span>
	</a>
		<ul class="sub-menu">

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'RateUserList') != -1}">active</c:if>"
				href="RateUserList">진도율 관리</a></li>


			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'PostList') != -1}">active</c:if>"
				href="PostList">게시판관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'careerList') != -1}">active</c:if>"
				href="careerList">FAQ 관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'StudyPList') != -1}">active</c:if>"
				href="StudyPList">수강후기관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'bbsList') != -1}">active</c:if>"
				href="bbsList">문의하기관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'calendar') != -1}">active</c:if>"
				href="calendar">일정계획</a></li>
		</ul>
	</li>
	<li
		class="<c:if test="${fn:indexOf(requestPath, 'hpenvList') != -1}">open</c:if>
		<c:if test="${fn:indexOf(requestPath, 'hpenv2List') != -1}">open</c:if>">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">CMS(홈피노출)</span> <span class="arrow "></span>
	</a>
		<ul class="sub-menu">
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'hpenvList') != -1}">active</c:if>"
				href="hpenvList">대분류관리</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'hpenv2List') != -1}">active</c:if>"
				href="hpenv2List">대분류배치관리</a></li>
		</ul>
	</li>


	<li
		class="<c:if test="${fn:indexOf(requestPath, 'survey') != -1}">open</c:if>
		
		<c:if test="${fn:indexOf(requestPath, 'vws') != -1}">open</c:if>">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">설문관리</span> <span class="arrow "></span>
	</a>
		<ul class="sub-menu">
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'surveyList') != -1}">active</c:if>"
				href="surveyList">설문지 관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'surveypool') != -1}">active</c:if>"
				href="surveypoolList">설문문항관리</a></li>

			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'vws') != -1}">active</c:if>"
				href="vwsList">설문결과내역</a></li>
		</ul>
	</li>



	<li
		class="<c:if test="${fn:indexOf(requestPath, 'b2b') != -1}">open</c:if>
		">
		<a href="javascript:;"> <i class="fa fa-table"></i> <span
			class="title" style="font-size: 15px">B2B</span> <span class="arrow "></span>
	</a>
		<ul class="sub-menu">
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'b2b') != -1}">active</c:if>"
				href="b2b">B2B 전용게시판</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'b2b') != -1}">active</c:if>"
				href="b2b">B2B 홈페이지 템플릿</a></li>
			<li><a
				class="<c:if test="${fn:indexOf(requestPath, 'b2b') != -1}">active</c:if>"
				href="b2b">B2B 홈페이지 배너</a></li>
		</ul>
	</li>

</ul>
</div>

<div class="project-info">

	<div class="block1">
		<span style="color: #efefef"><%= request.getServletPath().toString().replace("/WEB-INF/jsp/", "") %></span>
	</div>

	<div class="block2">&nbsp;</div>

</div>
</div>