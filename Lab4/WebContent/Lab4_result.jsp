<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.Timestamp"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="Lab4" class="Lab4.Lab4" scope="page">
	<%-- �ڹٺ� ����Ͽ� ������ �ѱ�� ��� --%>
	<jsp:setProperty name="Lab4" property="*" />
</jsp:useBean>
<%
	Lab4.setDate(new Timestamp(System.currentTimeMillis())); //���� ��¥�� �������.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab4_result</title>
</head>
<body>
<h1> �ֹ� ��� </h1>
<hr>
	�ֹ���ȣ:
	<jsp:getProperty name="Lab4" property="order_num" />
	<br> Ŀ��:
	<jsp:getProperty name="Lab4" property="coffee" />
	<br> �ɼ�:
	<jsp:getProperty name="Lab4" property="option" />
	<br> ������:
	<jsp:getProperty name="Lab4" property="size" />
	<br> �ֹ��ð�:
	<jsp:getProperty name="Lab4" property="date" />
	<br>
	<hr>
	<p align="center"> 201504034 �Ͽ��� </p>
</body>
</html>