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
    <title>Lab1</title> <%-- ���� --%>
</head>
<style>
    @import "style.css"; <%-- css ��Ÿ�� �ҷ����� --%>
</style>

<script language="JavaScript">

    function check_reset() {  <%-- �����ư�� ������ ������ �޽��� --%>
       var reset = confirm("���� ��� �Ҳ���?");
       if(reset){
           return false;
       }
       else {
           return true;
       }
    }

     function check_Buy(f) {  <%-- ��ĭ �Է� Ȯ�� --%>
         var name_chk = document.getElementById("name_chk"); name_chk.innerHTML = "";
         if (f.name.value == "" || f.name.value.length == 0) {
         }
         name_chk.innerHTML = "�̸��� �Է��Ͻʽÿ�!";

         var tel_chk = document.getElementById("tel_chk"); tel_chk.innerHTML = "";
         if (f.name.value=="" || f.name.value.length == 0) {

         }
         tel_chk.innerHTML = " ��ȭ���θ� �Է��Ͻʽÿ�!";

         var msg = confirm("������ ���� �ϱ�?");
         if(msg) location.href("Lab1_result.jsp");
         else { return false;
         }

     }
     function getMount(m) {  <%-- �������ý� �ݾ��� �ٲ�� �κ� --%>

         var ss = document.getElementById("count").options[document.getElementById("count")].value;
         document.getElementById("total_price").innerHTML="�ݾ���"+ss.value;
         innerHTML.addEventListener('count', function () { getMount(m)
         });

     }

</script>

<body>

<div id="container">
    <h2>��ǰ ���� ���</h2>
    <p style="color: cornflowerblue; font-size: 20px">��� �׸��� ��� ä���ּ���.</p> <hr>
    <form action="Lab1_result.jsp" name="form" method="post" onsubmit="return check_Buy(this)"  onreset="return check_reset(this)"          }>

        <p>�̸�</p>
        <input type="text" id="name" name="name" onfocus="check_Buy(this)" autofocus> <span id="name_chk"> </span>
        <p>��ȭ��ȣ</p>
        <input type="text" id = "tel" name="tel" placeholder="-�����ϰ� �Է�" onclick="check_Buy(this)" autofocus><span id="tel_chk"> </span>
        <p>������</p>
        <label>
            <input type="radio" name="size" value="S" checked> S
            <input type="radio" name="size" value="M"> M
            <input type="radio" name="size" value="L"> L
        </label>
        <p>����</p>
        <select name="count" id="count" onchange="getMount(this);">
            <option value="0" selected>�����ϼ���</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select> <span id="count_chk"> </span>
        <hr>
        <div class="total">
            �ݾ� : <span id="total_price" style="font-size: 25px"> 0 </span> </div>

            <input type="submit" value="����"> <input type="reset" value="�ٽþ���" >
        <hr>
        <p style="font-size: 15px; color: cadetblue">  ��ǻ�ͼ���Ʈ�����а� �Ͽ��� 201504034  </p>
    </form>

</div>

</body>
</html>

