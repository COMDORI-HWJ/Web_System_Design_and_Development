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
<%  String season = request.getParameter("season"); %> <!--�ö�����ư �������� �޾ƿ��� ����-->
<%=session.getAttribute("id")%>��  �� �����ϴ� ������ <%= season %> �̴�. <!--������ư �������� �޾ƿ��� ����-->
<hr>
<%@include file="header.jsp" %>  <!--�̸�, �й� ���-->
</body>
</html>