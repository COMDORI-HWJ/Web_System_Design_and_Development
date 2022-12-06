<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-26
  Time: 22:49
  201504034 하원지
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("main.jsp"); //로그아웃을 하고 main으로 돌아간다.
%>