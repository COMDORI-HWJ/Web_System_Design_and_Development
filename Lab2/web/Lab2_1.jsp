<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-26
  Time: 00:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>  <!-- include��Ƽ�긦 ����Ͽ� �ش� ���� �ҷ�����-->

<html>
<head>
    <style>@import "sty.css";</style>
    <meta charset="EUC-KR">
    <title>Lab2_1</title>
</head>
<body>
<form action="Lab2_1_result.jsp" name="form" method="post">
    <P>
    �̸�:
    <input type="text" id="name" name="name" > <span id="name_chk"> </span>
    <P>
        �й�:
        <input type="text" id="student_num" name="student" > <span id="student_num_chk"> </span>
    <P>
    <input type="radio" name="loops" value="1" >while�� <input type="radio" name="loops" value="2"> for�� <p> <!-- required �Ӽ��� Ȱ�� �Ͽ� �ʼ� ���� �ݵ�� �Է� ���� ������ �Ѿ�� ���� -->
    �Է�Ƚ�� :
    <input type="text" id="num" name="num" onfocus="num_focus(this.form)" autofocus> <span id="num_chk"> </span>
    <P>
        �Է´ܾ� :
        <input type="text" id="word" name="word" onfocus="word_focus(this.form)" autofocus> <span id="word_num_chk"> </span>
    <p><input type="submit" value=" ���� ">
</form>
</body>
</html>
