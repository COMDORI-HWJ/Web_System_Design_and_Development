<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-02
  Time: 오전 1:08
  201504034 하원지
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Lab3_menu</title>
</head>
<body>
	<%
		if (session.getAttribute("id") == null) { //로그인이 되어 있지 않을경우 보여지는 메뉴
	%>
	<a href="main.jsp">홈</a> |
	<a href="./main.jsp?pagefile=list"> 개설강좌 </a>
	<%
		} else {  //로그인이 되어 있을경우 보여지는 메뉴
	%>
	<a href="main.jsp">홈</a> |
	<a href="./main.jsp?pagefile=list"> 수강신청 </a>
	<%
		}
	%>
</body>
</html>
