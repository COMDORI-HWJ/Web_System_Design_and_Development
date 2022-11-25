<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-26
  Time: 00:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>  <!-- include디렉티브를 사용하여 해더 파일 불러오기-->

<html>
<head>
    <style>@import "sty.css";</style>
    <meta charset="EUC-KR">
    <title>Lab2_1</title>
</head>
<body>
<form action="Lab2_1_result.jsp" name="form" method="post">
    <P>
    이름:
    <input type="text" id="name" name="name" > <span id="name_chk"> </span>
    <P>
        학번:
        <input type="text" id="student_num" name="student" > <span id="student_num_chk"> </span>
    <P>
    <input type="radio" name="loops" value="1" >while문 <input type="radio" name="loops" value="2"> for문 <p> <!-- required 속성을 활용 하여 필수 값을 반드시 입력 하지 않으면 넘어가지 않음 -->
    입력횟수 :
    <input type="text" id="num" name="num" onfocus="num_focus(this.form)" autofocus> <span id="num_chk"> </span>
    <P>
        입력단어 :
        <input type="text" id="word" name="word" onfocus="word_focus(this.form)" autofocus> <span id="word_num_chk"> </span>
    <p><input type="submit" value=" 제출 ">
</form>
</body>
</html>
