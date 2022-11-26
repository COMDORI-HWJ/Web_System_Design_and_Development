<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-26
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%><html>
<html>
<head>
    <body>
    <title>Lab2_2</title>
        <%
		if (session.getAttribute("id") == null) {
	%>
    <form action="Lab2_2_result.jsp" method="post">
        아이디 <input type="text" name="id"> <br> 비밀번호 <input
            type="password" name="pwd"> <br> <input type="submit" value=" 로그인 ">
    </form>
        <%
		} else { //세션이 설정되지 않은 경우
	%>
    <form action="logout.jsp" method="post">
        <%=session.getAttribute("id")%>님 로그인하셨습니다. <br> <input type="submit" value=" 로그아웃 ">
    </form>
    <%@include file="includepage.jsp" %>
        <%
		}
	%>
    <%@include file="header.jsp" %>    <!--이름, 학번 출력-->
</body>
</html>
