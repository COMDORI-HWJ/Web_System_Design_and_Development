<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-01
  Time: 오후 9:12
  201504034 하원지
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
		var che = false; // 체크 여부 확인 기본 변수 값은 거짓으로 처리
		var val = document.getElementsByName("subject"); //배열 형태
		var count = 0; //체크 개수 를 확인
		for (var i = 0; i < val.length; i++) {
			if (val[i].checked) { //checked 가 체크박스의 체크를 분석한다.
				count++; //체크가 되어 있으면 카운터 증가

			}
		}
		if (count < 1) { //1개 미만일 경우 과목선택 메시지 출력
			alert("1과목 이상 선택하십시오!")
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
		if (session.getAttribute("id") == null) { //로그인 상태를 확인하여 개설 강좌목록과 수강신청 목록을 판단하여 출력
	%>
	<U2>개설강좌</U2>
	<br>
	<br>
	<table border="2">
		<tr>
			<th style="width: 150px">강좌코드</th>
			<th style="width: 950px">과목명</th>
			<th style="width: 60px">학년</th>
			<th style="width: 60px">학점</th>
		</tr>
		<tr>
			<td>IC015-A</td>
			<td>웹 시스템 설계 및 개발</td>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>IC147-A</td>
			<td>자바 기반 응용 프로그래밍</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>IC136-A</td>
			<td>컴퓨터 기초 프로그래밍</td>
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
	<U2>수강신청하기</U2>
	<br>
	<br>
	<form action="./main.jsp?pagefile=apply" onsubmit="return check(this);"
		method="post"> <!--선택한 강좌를 apply.jsp로 post방식으로 전송 한다.-->
		<table border="2">
			<tr>
				<th style="width: 150px">강좌코드</th>
				<th style="width: 950px">과목명</th>
				<th style="width: 60px">학년</th>
				<th style="width: 60px">학점</th>
				<th style="width: 50px">선택</th>
			</tr>
			<tr>
				<td>IC015-A</td>
				<td>웹 시스템 설계 및 개발</td>
				<td>3</td>
				<td>3</td>
				<td align="center"><input type="checkbox" value="웹시스템 설계 및 개발"
					name="subject"></td>
			</tr>
			<tr>
				<td>IC147-A</td>
				<td>자바 기반 응용 프로그래밍</td>
				<td>2</td>
				<td>3</td>
				<td align="center"><input type="checkbox"
					value="자바 기반 응용 프로그래밍" name="subject"></td>
			</tr>
			<tr>
				<td>IC136-A</td>
				<td>컴퓨터 기초 프로그래밍</td>
				<td>1</td>
				<td>3</td>
				<td align="center"><input type="checkbox" value="컴퓨터 기초 프로그래밍"
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
			<input type="submit" value="수강신청">
		</div>
	</form>
	<%
		}
	%>
</body>
</html>
