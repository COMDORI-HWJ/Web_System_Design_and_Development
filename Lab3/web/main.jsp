<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-01
  Time: 오후 7:34
  201504034 하원지
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr"); //한글 깨짐 방지 인코딩
%>
<html>
<head>
<title>Lab3</title>

</head>
<body>
	<%
		String pagefile = request.getParameter("pagefile"); //기본 intro페이지로 설정
		if (pagefile == null) {
			pagefile = "intro";
		}
	%>
	<!-- template.jsp로 값을 넘기고 pagefile을 사용해서 전역변수 처리하리 포워드 한다.-->
	<jsp:forward page="template.jsp">
		<jsp:param name="pagefile" value="<%=pagefile%>" />
	</jsp:forward>

</body>
</html>
