<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.Timestamp"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="Lab4" class="Lab4.Lab4" scope="page">
	<%-- 자바빈 사용하여 데이터 넘기고 출력 --%>
	<jsp:setProperty name="Lab4" property="*" />
</jsp:useBean>
<%
	Lab4.setDate(new Timestamp(System.currentTimeMillis())); //현재 날짜룰 출력해줌.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab4_result</title>
</head>
<body>
<h1> 주문 결과 </h1>
<hr>
	주문번호:
	<jsp:getProperty name="Lab4" property="order_num" />
	<br> 커피:
	<jsp:getProperty name="Lab4" property="coffee" />
	<br> 옵션:
	<jsp:getProperty name="Lab4" property="option" />
	<br> 사이즈:
	<jsp:getProperty name="Lab4" property="size" />
	<br> 주문시간:
	<jsp:getProperty name="Lab4" property="date" />
	<br>
	<hr>
	<p align="center"> 201504034 하원지 </p>
</body>
</html>