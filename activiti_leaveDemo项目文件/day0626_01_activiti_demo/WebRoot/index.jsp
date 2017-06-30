<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="<%=request.getContextPath()%>/css/index.css"
	type="text/css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	
	$(function(){
		
		$("#loginbt").click(function(){
			$.post(
				"login.action",
				$("#loginForm").serialize(),
				function(obj){
					if(obj>0){
						location.href="main.action";
					}else{
						alert("用户名密码错误！");
					}
				},
				"json"
			)
		})
		
		
	})
	
	
</script>
</head>
<body>
	<form id="loginForm">
		<h1>用户登录</h1>
		<input name="name" value="张三" ><br>
		<input name="password" value="123456"><br>
		<input type="button" id="loginbt" value="登录">

	</form>
</body>
</html>