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

<% if(null==request.getParameter("loops")){ //������ư�� �������� �ʾ��� ��� null ���� �Ǹ� �޽��� ���
out.print("���� ��ư�� �������� �ʾҽ��ϴ�!");
}
else { // null���� �ƴѰ�� �Ʒ��� �ҽ��� ����
 String name=request.getParameter("name"); out.print("�̸� : "+name+"<br/>");
 String student_num=request.getParameter("student"); out.print("�й� : "+student_num+"<br/>");
 String loops=request.getParameter("loops");
 String text=request.getParameter("word");
 String num=request.getParameter("num");
 if(1==Integer.parseInt(loops)){ //value ���� 1�϶� while�� ����ȴ�
  out.print("while�� ����! <br/>");
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
 else if(2==Integer.parseInt(loops)){ //value ���� 2�϶� for�� ����ȴ�
  out.print("for�� ����! <br/>");
  for (int i=0; i<Integer.parseInt(num); i++){
   out.print(text+"<br/>");
  }
 }
}
%>
<p>
<hr>  <%@include file="header.jsp" %>    <!--�̸�, �й� ���-->
</body>
</html>