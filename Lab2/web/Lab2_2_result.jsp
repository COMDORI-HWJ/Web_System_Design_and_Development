<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-26
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id"); //id를 가져오는 구문
    String pwd = request.getParameter("pwd"); //비밀번호를 가져오는 구문
    if (id.equals("test") && pwd.equals("1234"))
        session.setAttribute("id", id);
    response.sendRedirect("Lab2_2.jsp");  //아이디와 비밀번호를 Lab2_2로 보내는 구문
%>
