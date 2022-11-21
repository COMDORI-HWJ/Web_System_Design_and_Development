<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-25
  Time: 00:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%  request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1_result</title>
</head>
<body>

<% if(null==request.getParameter("loops")){ //라디오버튼을 선택하지 않았을 경우 null 값이 되면 메시지 출력
out.print("라디오 버튼을 선택하지 않았습니다!");
}
else { // null값이 아닌경우 아래의 소스를 실행
 String name=request.getParameter("name"); out.print("이름 : "+name+"<br/>");
 String student_num=request.getParameter("student"); out.print("학번 : "+student_num+"<br/>");
 String loops=request.getParameter("loops");
 String text=request.getParameter("word");
 String num=request.getParameter("num");
 if(1==Integer.parseInt(loops)){ //value 값이 1일때 while문 실행된다
  out.print("while문 선택! <br/>");
  boolean t = true;
  int i = 0;
  while (t){
   out.print(text+"<br/>");
   i++;
   if (i == Integer.parseInt(num)){
    break;
   }
  }
 }
 else if(2==Integer.parseInt(loops)){ //value 값이 2일때 for문 실행된다
  out.print("for문 선택! <br/>");
  for (int i=0; i<Integer.parseInt(num); i++){
   out.print(text+"<br/>");
  }
 }
}
%>
<p>
<hr>  <%@include file="header.jsp" %>    <!--이름, 학번 출력-->
</body>
</html>