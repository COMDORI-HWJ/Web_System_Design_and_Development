<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-23
  Time: 00:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<% request.setCharacterEncoding("euc-kr"); //??? ????? ?¥ê?
//String count=request.getParmeter("count");
%>
<html>
<head>
    <title>??????</title>
</head>
<style>
    @import "style.css"; <%-- css ????? ??????? --%>
</style>
<div id="container">

<body>
<h2>??? ??? ??????</h2>
<p>??? :
<%= request.getParameter("name")%>  <%-- Lab1.jsp ???? ?????? ??????? --%>
<p>?????? :
<%= request.getParameter("tel")%>
<p>Size :
<%= request.getParameter("size")%>
<p>???? :
<%= request.getParameter("count")%> ??

<hr>
<p style="color: darkgreen; font-size: 15px">???: 0</p>
</body>
</html>
