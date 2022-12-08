<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% String pagefile=request.getParameter("pagefile");%>
<!doctype html>
<html lang="ko">
<head>
<title>Lab3</title>
<meta charset="euc-kr">
	<style>
	#container {
		font-family: "맑은 고딕";
		width: 940px;
		margin: 0px auto;
		padding: 20px;
		border: 1px solid #bcbcbc;
	}

	#header {
		font-family: "맑은 고딕";
		padding: 20px;
		margin-bottom: 5px;
		width: 900px;
		height: 10px;
		border: 1px solid #bcbcbc;
		float: right;
		text-align: right;
	}

	#headermenu {
		font-family: "맑은 고딕";
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
		font-family: "맑은 고딕";
		color: darkslategrey;
		clear: both;
		padding: 30px;
		border: 1px solid #bcbcbc;
	}
	</style>
</head>
<body>
<div id="container">
			    	<!-- header 시작  -->
	
		<div id="header">
			<jsp:include page="header.jsp"/>  <!--header.jsp를 불러온다-->
		</div>
				 <div id="headermenu">
			<jsp:include page="menu.jsp"/> <!--menu.jsp를 불러온다-->
		</div> 
		<!-- header 끝  -->

		<!--  content 시작  -->
		<div id="content">
			<jsp:include page='<%=pagefile+".jsp"%>'/> <!--content는 계속 변화 하므로 상황에 따라 맞는 파일을 불러옴-->
		</div>
		<!--  content 끝  -->
		
		<!--  footer 시작   -->
		<div id="footer">
			<p>
				<jsp:include page="footer.jsp"/> <!--footer.jsp를 불러온다-->
			</p>
		</div>
		<!--  footer 끝  -->

		</div>
<!-- container 끝  -->
</body>
</html>
