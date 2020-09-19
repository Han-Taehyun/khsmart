<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<form id="form1" name="form1" method="post" action="studentList">
  <!-- START CONTENT -->
  <section id="main-content" class=" ">
    <section class="wrapper" style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
      <div class="col-lg-12">
        <section class="box ">
          <header class="panel_header">
            <h2 class="title pull-left">학생 목록</h2>
            <div class="actions panel_actions pull-right">
              <ul class="list-unstyled">
                <li style="float: left;"><input type="checkbox" id="searchType" name="searchType" value="username"
                  <c:if test="${fn:indexOf(searchVO.searchType, 'username')!= -1}">checked="checked"</c:if> /> <label
                  class="chkselect" for="searchType1">이름</label>&nbsp;&nbsp; <input type="checkbox" name="searchType"
                  value="userid" <c:if test="${fn:indexOf(searchVO.searchType, 'userid')!=-1}">checked="checked"</c:if> />
                  <label class="chkselect" for="searchType2">아이디</label>&nbsp;&nbsp; <input type="checkbox"
                  name="searchType" value="elsname"
                  <c:if test="${fn:indexOf(searchVO.searchType, 'elsname')!=-1}">checked="checked"</c:if> /> <label
                  class="chkselect" for="searchType3">학교명</label>&nbsp;&nbsp;</li>
                <li style="float: left;"><input type="text" style="width: 150px; height: 31px" id="searchKeyword"
                  name="searchKeyword" value='<c:out value="${searchVO.searchKeyword}"/>'
                  onkeydown="if(event.keyCode == 13) { fn_formSubmit();}"></li>
                <li style="float: left;">&nbsp;&nbsp;
                  <button type="button" class="btn btn-primary " onclick="fn_formSubmit()">검색</button> <!--  button type="button" class="btn btn-orange" onclick="fn_formGo()">신규</button -->
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
                      <th style="width: 10%">아이디</th>
                      <th style="width: 10%">이름</th>
                      <th style="width: 10%">이메일</th>
                      <th style="width: 10%">연락처</th>
                      <th style="width: 10%">학교</th>
                      <th style="width: 10%">학년</th>
                      <th style="width: 10%">반</th>
                      <th style="width: 10%">번호</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="listview" items="${listview}" varStatus="status">
                      <tr>
                        <td><c:out
                            value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>
                        <td><a href="studentRead?sn=${listview.sn}">${listview.userid}</a></td>
                        <td><c:out value="${listview.username}" /></td>
                        <td><c:out value="${listview.email}" /></td>
                        <td><c:out value="${listview.mobile}" /></td>
                        <td><c:if test="${listview.schoolunivfk == '0' }">지정학교없음</c:if> <c:if
                            test="${listview.schoolunivfk != '0' }">${listview.elsname}</c:if></td>
                        <td><c:out value="${listview.usyear}" /></td>
                        <td><c:out value="${listview.usban}" /></td>
                        <td><c:out value="${listview.usbun}" /></td>
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
  <!-- END CONTENT -->
</form>
<script>
  function fn_formSubmit() {
    document.form1.action = "studentList";
    document.form1.submit();
  }
  function fn_formGo() {
    document.form1.action = "studentForm";
    document.form1.submit();
  }
</script>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />