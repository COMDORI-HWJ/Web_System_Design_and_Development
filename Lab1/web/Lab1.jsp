<%--
  Created by IntelliJ IDEA.
  User: hwj
  Date: 2019-03-23
  Time: 00:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Lab1</title> <%-- 제목 --%>
</head>
<style>
    @import "style.css"; <%-- css 스타일 불러오기 --%>
</style>

<script language="JavaScript">

    function check_reset() {  <%-- 제출버튼을 누르면 나오는 메시지 --%>
       var reset = confirm("정말 취소 할꺼냐?");
       if(reset){
           return false;
       }
       else {
           return true;
       }
    }

     function check_Buy(f) {  <%-- 빈칸 입력 확인 --%>
         var name_chk = document.getElementById("name_chk"); name_chk.innerHTML = "";
         if (f.name.value == "" || f.name.value.length == 0) {
         }
         name_chk.innerHTML = "이름을 입력하십시오!";

         var tel_chk = document.getElementById("tel_chk"); tel_chk.innerHTML = "";
         if (f.name.value=="" || f.name.value.length == 0) {

         }
         tel_chk.innerHTML = " 전화번로를 입력하십시오!";

         var msg = confirm("정말로 결제 니까?");
         if(msg) location.href("Lab1_result.jsp");
         else { return false;
         }

     }
     function getMount(m) {  <%-- 수량선택시 금액이 바뀌는 부분 --%>

         var ss = document.getElementById("count").options[document.getElementById("count")].value;
         document.getElementById("total_price").innerHTML="금액은"+ss.value;
         innerHTML.addEventListener('count', function () { getMount(m)
         });

     }

</script>

<body>

<div id="container">
    <h2>상품 구매 양식</h2>
    <p style="color: cornflowerblue; font-size: 20px">모든 항목을 모두 채워주세요.</p> <hr>
    <form action="Lab1_result.jsp" name="form" method="post" onsubmit="return check_Buy(this)"  onreset="return check_reset(this)"          }>

        <p>이름</p>
        <input type="text" id="name" name="name" onfocus="check_Buy(this)" autofocus> <span id="name_chk"> </span>
        <p>전화번호</p>
        <input type="text" id = "tel" name="tel" placeholder="-제외하고 입력" onclick="check_Buy(this)" autofocus><span id="tel_chk"> </span>
        <p>사이즈</p>
        <label>
            <input type="radio" name="size" value="S" checked> S
            <input type="radio" name="size" value="M"> M
            <input type="radio" name="size" value="L"> L
        </label>
        <p>수량</p>
        <select name="count" id="count" onchange="getMount(this);">
            <option value="0" selected>선택하세요</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select> <span id="count_chk"> </span>
        <hr>
        <div class="total">
            금액 : <span id="total_price" style="font-size: 25px"> 0 </span> </div>

            <input type="submit" value="제출"> <input type="reset" value="다시쓰기" >
        <hr>
        <p style="font-size: 15px; color: cadetblue">  컴퓨터소프트웨어학과 하원지 201504034  </p>
    </form>

</div>

</body>
</html>

