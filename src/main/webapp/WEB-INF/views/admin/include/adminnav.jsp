<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.semi.flix.admin.common.*" %>
<%
request.setAttribute("commonURL", request.getContextPath());
String id = AdminStringUtil.nullToValue(session.getAttribute("id"), "");
String userid = AdminStringUtil.nullToValue(session.getAttribute("userid"), "");
String username = AdminStringUtil.nullToValue(session.getAttribute("username"), "");
String email = AdminStringUtil.nullToValue(session.getAttribute("email"), "");
String phone = AdminStringUtil.nullToValue(session.getAttribute("phone"), "");
%>
<meta charset="UTF-8">
	<nav class="navbar navbar-expand-sm bg-light navbar-light" style="display:none">
        <div class="container-fluid">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" href="${commonURL}/admin/board/list">게시판</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="${commonURL}/freeboard/list">자유게시판</a>
            </li>
           <li class="nav-item">
              <a class="nav-link" href="${commonURL}/gallery/list">갤러리</a>
            </li>
            
            <%if(userid.equals("")) {%>
            <li class="nav-item">
              <a class="nav-link" href="${commonURL}/member/join">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${commonURL}/member/login">로그인</a>
            </li>
            <%} else{%>
            <li class="nav-item">
              <a class="nav-link" href="${commonURL}/member/myinfo">내정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${commonURL}/member/logout">로그아웃</a>
            </li>
            <%} %>
          </ul>
          
          <div class="d-flex">
          	<a class="nav-link" href="${commonURL}/"><button class="btn btn-primary" type="button">Home</button></a>
          </div>
        </div>
    </nav>
