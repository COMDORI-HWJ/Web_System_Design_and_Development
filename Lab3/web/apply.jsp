<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-02
  Time: ���� 2:00
  201504034 �Ͽ���
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr"); //�ѱ� ���� ����
%>

<!DOCTYPE html>
<html>
<head>
<style>
U2 {
	font-weight: bold;
	font-size: 35px;
	color: blue;
}
</style>

<meta charset="EUC-KR">
<title>Lab3_Apply</title>
</head>
<body>
	<U2>������û ���</U2>

	<table border="2">
		<tr>
			<th style="width: 50px">��ȣ</th>
			<th style="width: 950px">�����</th>
			<th style="width: 60px">�г�</th>
			<th style="width: 60px">����</th>
		</tr>
		<%
			String[] c = request.getParameterValues("subject");
			int sum = 0; //���� ���� ����
			int count = 0; //��� ���� ����
			int grade = 0; //�г� ���� ����
			for (int i = 0; i < c.length; i++) {
				if ("���ý��� ���� �� ����".equals(c[i])) {
					sum += 3; //������ �����ش�
					count++; //��� ��ȣ�� �����ش�
					grade = 3; //�г��� ǥ�����ش�
				} else if ("�ڹ� ��� ���� ���α׷���".equals(c[i])) {
					sum += 3;
					count++;
					grade = 2;
				} else if ("��ǻ�� ���� ���α׷���".equals(c[i])) {
					sum += 3;
					count++;
					grade = 1;
				} else if ("Operating System".equals(c[i])) {
					sum += 3;
					count++;
					grade = 3;
				}
		%>
		<tr>
			<th><%=count%></th> <!--ǥ���� ����� ǥ��-->
			<td>
				<%
					out.print(c[i]); //������ ������ ���
				%>
			</td>
			<td><%=grade%></td> <!--�г��� ���-->
			<td>3</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="3" align="center">�� ����</td>
			<td><font color="#dc143c"><strong><%=sum%></strong></font></td>
		</tr>

	</table>
	<br>
	<br>
	<form action="./main.jsp?pagefile=result" method="post" name="submit">
		<input type="submit" value="��û">
	</form>
</body>
</html>