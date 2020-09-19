<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<form id="form1" name="form1" method="post" action="staffList">
  <!-- START CONTENT -->
  <section id="main-content" class=" ">
    <section class="wrapper" style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
      <div class="col-lg-12">
        <section class="box ">
          <header class="panel_header">
            <h2 class="title pull-left">직원 목록</h2>
            <div class="actions panel_actions pull-right">
              <ul class="list-unstyled">
                <li style="float: left;"><input type="radio" id="searchType" name="searchType" value="username"
                  <c:if test="${fn:indexOf(searchVO.searchType, 'username')!= -1}">checked="checked"</c:if> /> <label
                  class="chkselect" for="searchType1">이름</label>&nbsp;&nbsp; <input type="radio" name="searchType"
                  value="userid" <c:if test="${fn:indexOf(searchVO.searchType, 'userid')!=-1}">checked="checked"</c:if> />
                  <label class="chkselect" for="searchType2">아이디</label>&nbsp;&nbsp;</li>
                <li style="float: left;"><input type="text" style="width: 150px; height: 31px" id="searchKeyword"
                  name="searchKeyword" value='<c:out value="${searchVO.searchKeyword}"/>'
                  onkeydown="if(event.keyCode == 13) { fn_formSubmit();}"></li>
                <li style="float: left;">&nbsp;&nbsp;
                  <button type="button" class="btn btn-primary " onclick="fn_formSubmit()">검색</button>
                  <button type="button" class="btn btn-orange" onclick="fn_formGo()">신규</button>
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
                      <th style="width: 10%">분류</th>
                      <th style="width: 10%">연락처</th>
                      <th style="width: 10%">이메일</th>
                      <th style="width: 10%">가입일자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="listview" items="${listview}" varStatus="status">
                      <tr>
                        <td><c:out value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>
                        <td><a href="staffRead?sn=${listview.sn}">${listview.userid}</a></td>
                        <td><c:out value="${listview.username}" /></td>
                        <td><c:out value="${listview.usertypecode}" />(<c:out value="${listview.codename}" />)</td>
                        <td><c:out value="${listview.mobile}" /></td>
                        <td><c:out value="${listview.email}" /></td>
                        <fmt:parseDate value="${listview.regdate}" pattern="yyyy-MM-dd" var="formatDate" />
                        <fmt:formatDate value="${formatDate}" pattern="yyyy-MM-dd" var="date" />
                        <td><c:out value="${date}" /></td>
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
    document.form1.action = "staffList";
    document.form1.submit();
  }
  function fn_formGo() {
    document.form1.action = "staffForm";
    document.form1.submit();
  }
</script>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />