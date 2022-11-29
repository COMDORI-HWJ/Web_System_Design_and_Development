<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-02
  Time: 오후 2:00
  201504034 하원지
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr"); //한글 깨짐 방지
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
	<U2>수강신청 목록</U2>

	<table border="2">
		<tr>
			<th style="width: 50px">번호</th>
			<th style="width: 950px">과목명</th>
			<th style="width: 60px">학년</th>
			<th style="width: 60px">학점</th>
		</tr>
		<%
			String[] c = request.getParameterValues("subject");
			int sum = 0; //학점 저장 변수
			int count = 0; //목록 저장 변수
			int grade = 0; //학년 저장 변수
			for (int i = 0; i < c.length; i++) {
				if ("웹시스템 설계 및 개발".equals(c[i])) {
					sum += 3; //학점을 더해준다
					count++; //목록 번호를 더해준다
					grade = 3; //학년을 표기해준다
				} else if ("자바 기반 응용 프로그래밍".equals(c[i])) {
					sum += 3;
					count++;
					grade = 2;
				} else if ("컴퓨터 기초 프로그래밍".equals(c[i])) {
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
			<th><%=count%></th> <!--표에서 목록을 표시-->
			<td>
				<%
					out.print(c[i]); //수강한 과목을 출력
				%>
			</td>
			<td><%=grade%></td> <!--학년을 출력-->
			<td>3</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="3" align="center">총 학점</td>
			<td><font color="#dc143c"><strong><%=sum%></strong></font></td>
		</tr>

	</table>
	<br>
	<br>
	<form action="./main.jsp?pagefile=result" method="post" name="submit">
		<input type="submit" value="신청">
	</form>
</body>
</html>