<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab4</title>
</head>
<script type="text/javascript">
function check_reset() {  <%-- ��ҹ�ư�� ������ ������ �޽��� --%>
var reset = confirm("���� �ֹ� ��� �Ͻðڽ��ϱ�?");
if(reset){
    return true;
}
else {
    return false;
}
}

function check(){
	var frm = document.getElementById("form"); <%-- �����ֹ���ư�� ������ ������ �޽��� --%>
	if(frm.coffee.value==null || frm.coffee.value=="" ||frm.size.value=="0" ){
		alert("Ŀ�ǿ� ũ�⸦ ���ÿ�.");
		return false;
	}
	
	return true;
}

</script>
<body>
<form action ="Lab4_result.jsp" id ="form" method="post" onsubmit="return check(this)" onreset="return check_reset(this)">
<h1> ���� �ֹ��ϱ� </h1>
<hr>
Ŀ������<br>
<input type="radio" name ="coffee" value="�Ƹ޸�ī��">�Ƹ޸�ī��
<input type="radio" name="coffee" value="ī���">ī���
<input type="radio" name="coffee" value="ī���ī">ī���ī
<br>
�ɼ� <br>
<input type="radio" name="option" value="hot" checked>hot
<input type="radio" name="option" value="ice">ice
<br>
������ <br>
<select name="size">
<option value="0">�������ּ���</option>
<option value="Tall">Tall</option>
<option value="Grande">Grande</option>
<option value="Venti">Venti</option>
</select>
<br>
<input type="submit" value="�����ֹ��ϱ�">
<input type="reset" value="���">
<br>
<hr><p align="center"> 201504034 �Ͽ��� </p>
</form>
</body>
</html>