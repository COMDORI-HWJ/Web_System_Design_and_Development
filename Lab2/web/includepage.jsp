<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Date" %> <!--시간을 받아오는 라이브러리-->
<%@page import="java.text.SimpleDateFormat" %>
<form action="includeResult.jsp" method="post">

<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_2</title>
</head>
<body>
* 좋아하는 계절은?
<input type="radio" name="season" value="봄">봄 <input type="radio" name="season" value="여름">여름 <!--라디오버튼을 활용한 계절 선택 받기-->
<input type="radio" name="season" value="가을">가을 <input type="radio" name="season" value="겨울">겨울
<input type="submit" value="결과보기 ">
 <p>
 <hr>
 <%
 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //시간 포맷
 long accessedTime = session.getLastAccessedTime();  //마지막으로 클라이언트가 요청한 시
 String Time = dateFormat.format(new Date(accessedTime));
 %><p>
 최종 접속 시간: <%= Time %>
<hr>
</form>
</body>
</html>
