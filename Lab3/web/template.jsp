<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% String pagefile=request.getParameter("pagefile");%>
<!doctype html>
<html lang="ko">
<head>
<title>Lab3</title>
<meta charset="euc-kr">
	<style>
	#container {
		font-family: "���� ���";
		width: 940px;
		margin: 0px auto;
		padding: 20px;
		border: 1px solid #bcbcbc;
	}

	#header {
		font-family: "���� ���";
		padding: 20px;
		margin-bottom: 5px;
		width: 900px;
		height: 10px;
		border: 1px solid #bcbcbc;
		float: right;
		text-align: right;
	}

	#headermenu {
		font-family: "���� ���";
		padding: 20px;
		margin-bottom: 5px;
		width: 900px;
		height: 50px;
		float: left;
		border: 1px solid #bcbcbc;
	}

	#content {
		width: 900px;
		padding: 20px;
		margin-bottom: 20px;
		float: right;
		border: 1px solid #bcbcbc;
	}

	#footer {
		font-family: "���� ���";
		color: darkslategrey;
		clear: both;
		padding: 30px;
		border: 1px solid #bcbcbc;
	}
	</style>
</head>
<body>
<div id="container">
			    	<!-- header ����  -->
	
		<div id="header">
			<jsp:include page="header.jsp"/>  <!--header.jsp�� �ҷ��´�-->
		</div>
				 <div id="headermenu">
			<jsp:include page="menu.jsp"/> <!--menu.jsp�� �ҷ��´�-->
		</div> 
		<!-- header ��  -->

		<!--  content ����  -->
		<div id="content">
			<jsp:include page='<%=pagefile+".jsp"%>'/> <!--content�� ��� ��ȭ �ϹǷ� ��Ȳ�� ���� �´� ������ �ҷ���-->
		</div>
		<!--  content ��  -->
		
		<!--  footer ����   -->
		<div id="footer">
			<p>
				<jsp:include page="footer.jsp"/> <!--footer.jsp�� �ҷ��´�-->
			</p>
		</div>
		<!--  footer ��  -->

		</div>
<!-- container ��  -->
</body>
</html>
