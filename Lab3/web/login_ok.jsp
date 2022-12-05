<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-03
  Time: 오후 8:59
  201504034 하원지
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab3_Login</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    if (id.equals("test") && pwd.equals("1234"))  //로그인 항목 아이디와 비밀번호
        session.setAttribute("id", id);
    response.sendRedirect("main.jsp"); //로그인이 되면 main으로 돌아간다.
%>
</body>
</html>
