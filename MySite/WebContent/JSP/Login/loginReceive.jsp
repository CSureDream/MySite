<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form1" method="post" action="loginReceive.jsp">
		用户名：<input name="userName"	type="text" size="6" maxlength="6" /> 
		密码: <input	name="passWord" type="password" size="6" maxlength="6" /> <br>
		<input name="submit" type="submit" value="登录" /> 
		<input name="rest"type="reset" value="重置" />
	</form>
	<%
		String name = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		if (null != name && null != passWord && "ss".equals(name) && passWord.equals("123")) {
			response.setHeader("refresh", "2;url=logCorrect.jsp");//定时跳转
			session.setAttribute("userId", name); //将用户名保存到session中
	%>
	<h3>success 2s 后 跳转</h3>
	<h3>
		如果没有跳转点击<a href="logCorrect.jsp"></a>这里</a>
	</h3>
	<%
		} else{
	%>
	<h3>输入正確的账号和密码</h3>
	<%
	}
	%>
</body>
</html>