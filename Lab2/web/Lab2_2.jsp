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
        ���̵� <input type="text" name="id"> <br> ��й�ȣ <input
            type="password" name="pwd"> <br> <input type="submit" value=" �α��� ">
    </form>
        <%
		} else { //������ �������� ���� ���
	%>
    <form action="logout.jsp" method="post">
        <%=session.getAttribute("id")%>�� �α����ϼ̽��ϴ�. <br> <input type="submit" value=" �α׾ƿ� ">
    </form>
    <%@include file="includepage.jsp" %>
        <%
		}
	%>
    <%@include file="header.jsp" %>    <!--�̸�, �й� ���-->
</body>
</html>
