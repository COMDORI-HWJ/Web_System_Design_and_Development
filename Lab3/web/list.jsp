<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-01
  Time: ���� 9:12
  201504034 �Ͽ���
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<head>
<title>sub_List</title>
<style>
U2 {
	font-weight: bold;
	font-size: 35px;
	color: olive;
}
</style>

<script type="text/javascript">
	function check() {
		var che = false; // üũ ���� Ȯ�� �⺻ ���� ���� �������� ó��
		var val = document.getElementsByName("subject"); //�迭 ����
		var count = 0; //üũ ���� �� Ȯ��
		for (var i = 0; i < val.length; i++) {
			if (val[i].checked) { //checked �� üũ�ڽ��� üũ�� �м��Ѵ�.
				count++; //üũ�� �Ǿ� ������ ī���� ����

			}
		}
		if (count < 1) { //1�� �̸��� ��� ������ �޽��� ���
			alert("1���� �̻� �����Ͻʽÿ�!")
			return false;
		} else {
			che = true;
			//location.href="./main.jsp?pagefile=apply="+count;
		}
		return che;

	}
</script>
</head>
<body>

	<%
		if (session.getAttribute("id") == null) { //�α��� ���¸� Ȯ���Ͽ� ���� ���¸�ϰ� ������û ����� �Ǵ��Ͽ� ���
	%>
	<U2>��������</U2>
	<br>
	<br>
	<table border="2">
		<tr>
			<th style="width: 150px">�����ڵ�</th>
			<th style="width: 950px">�����</th>
			<th style="width: 60px">�г�</th>
			<th style="width: 60px">����</th>
		</tr>
		<tr>
			<td>IC015-A</td>
			<td>�� �ý��� ���� �� ����</td>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>IC147-A</td>
			<td>�ڹ� ��� ���� ���α׷���</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>IC136-A</td>
			<td>��ǻ�� ���� ���α׷���</td>
			<td>1</td>
			<td>3</td>
		</tr>
		<tr>
			<td>IC066-A</td>
			<td>Operating System</td>
			<td>1</td>
			<td>3</td>
		</tr>
	</table>
	<%
		} else {
	%>
	<U2>������û�ϱ�</U2>
	<br>
	<br>
	<form action="./main.jsp?pagefile=apply" onsubmit="return check(this);"
		method="post"> <!--������ ���¸� apply.jsp�� post������� ���� �Ѵ�.-->
		<table border="2">
			<tr>
				<th style="width: 150px">�����ڵ�</th>
				<th style="width: 950px">�����</th>
				<th style="width: 60px">�г�</th>
				<th style="width: 60px">����</th>
				<th style="width: 50px">����</th>
			</tr>
			<tr>
				<td>IC015-A</td>
				<td>�� �ý��� ���� �� ����</td>
				<td>3</td>
				<td>3</td>
				<td align="center"><input type="checkbox" value="���ý��� ���� �� ����"
					name="subject"></td>
			</tr>
			<tr>
				<td>IC147-A</td>
				<td>�ڹ� ��� ���� ���α׷���</td>
				<td>2</td>
				<td>3</td>
				<td align="center"><input type="checkbox"
					value="�ڹ� ��� ���� ���α׷���" name="subject"></td>
			</tr>
			<tr>
				<td>IC136-A</td>
				<td>��ǻ�� ���� ���α׷���</td>
				<td>1</td>
				<td>3</td>
				<td align="center"><input type="checkbox" value="��ǻ�� ���� ���α׷���"
					name="subject"></td>
			</tr>
			<tr>
				<td>IC066-A</td>
				<td>Operating System</td>
				<td>1</td>
				<td>3</td>
				<td align="center"><input type="checkbox"
					value="Operating System" name="subject"></td>
			</tr>
		</table>
		<div style="float: right;">
			<input type="submit" value="������û">
		</div>
	</form>
	<%
		}
	%>
</body>
</html>
