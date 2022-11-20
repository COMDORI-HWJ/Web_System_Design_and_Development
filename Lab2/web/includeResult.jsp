<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-26
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%><html>
<%  request.setCharacterEncoding("EUC-KR"); %>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
</head>
<body>
<%  String season = request.getParameter("season"); %> <!--시라디오버튼 계절값을 받아오는 구문-->
<%=session.getAttribute("id")%>님  이 좋아하는 계절은 <%= season %> 이다. <!--라디오버튼 계절값을 받아오는 구문-->
<hr>
<%@include file="header.jsp" %>  <!--이름, 학번 출력-->
</body>
</html>