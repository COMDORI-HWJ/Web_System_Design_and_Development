<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Date" %> <!--�ð��� �޾ƿ��� ���̺귯��-->
<%@page import="java.text.SimpleDateFormat" %>
<form action="includeResult.jsp" method="post">

<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_2</title>
</head>
<body>
* �����ϴ� ������?
<input type="radio" name="season" value="��">�� <input type="radio" name="season" value="����">���� <!--������ư�� Ȱ���� ���� ���� �ޱ�-->
<input type="radio" name="season" value="����">���� <input type="radio" name="season" value="�ܿ�">�ܿ�
<input type="submit" value="������� ">
 <p>
 <hr>
 <%
 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //�ð� ����
 long accessedTime = session.getLastAccessedTime();  //���������� Ŭ���̾�Ʈ�� ��û�� ��
 String Time = dateFormat.format(new Date(accessedTime));
 %><p>
 ���� ���� �ð�: <%= Time %>
<hr>
</form>
</body>
</html>
