<%--
  Created by IntelliJ IDEA.
  User: HWJ
  Date: 2019-04-01
  Time: 오후 7:02
  201504034 하원지
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab3_header</title>
</head>
<body>
<script>
    function chk_id() {
        var id = document.getElementById("id").value; //ID를 확인
        var pwd= document.getElementById("pwd").value; //PWD를 확인
        var ck = false;
        if (id == "") {
            alert("ID를 입력 하십시오!");
            return ck; //다음화면으로 넘어가지 않는 구문

        } else if (id != "test") {
            alert("ID가 틀립니다!");
            return ck;

        }

        else if (pwd == "") {
            alert("Password를 입력 하십시오!");
            return ck;

        }


        else if (pwd != "1234") {
            alert("Password가 틀립니다!");
            return ck;

        }
        else {
            return true;
        }
    }
</script>
<%if(session.getAttribute("id")==null){ %>
<form action="login_ok.jsp" method="post">
    아이디<input type="text" name="id" id="id"> 비밀번호<input type="password" name="pwd" id="pwd">
    <input type="submit" value="로그인" onclick="return chk_id()">
    <input type="button" value="회원가입" onclick="location.href = './main.jsp?pagefile=join'">
</form>
<%} else { %>
<form action="logout.jsp" method="post" >
    <%= session.getAttribute("id") %>님 로그인하셨습니다.
    <input type="submit" value=" 로그아웃 ">
</form>
<% } %>

</body>
</html>
