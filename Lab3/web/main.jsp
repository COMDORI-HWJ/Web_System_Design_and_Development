<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-01
  Time: ���� 7:34
  201504034 �Ͽ���
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr"); //�ѱ� ���� ���� ���ڵ�
%>
<html>
<head>
<title>Lab3</title>

</head>
<body>
	<%
		String pagefile = request.getParameter("pagefile"); //�⺻ intro�������� ����
		if (pagefile == null) {
			pagefile = "intro";
		}
	%>
	<!-- template.jsp�� ���� �ѱ�� pagefile�� ����ؼ� �������� ó���ϸ� ������ �Ѵ�.-->
	<jsp:forward page="template.jsp">
		<jsp:param name="pagefile" value="<%=pagefile%>" />
	</jsp:forward>

</body>
</html>
