<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">
</head>

<body>

<%
	String error = (String) request.getAttribute("error");
    if (error != null) {
        out.println("<font color='red'>" + error + "</font><br>");
    }
%>
<%
    String result = (String) request.getAttribute("result");
    if (result != null) {
        out.println("<font color='red'>" + result + "</font><br>");
    }
%>

<a href="${pageContext.servletContext.contextPath}${initParam.W_SERVLET_BASE}/getAllAuction">进入首页</a>


<div id="login_frame">	
	<form action="${pageContext.servletContext.contextPath}${initParam.W_SERVLET_BASE}/LoginServlet" method="post">
		<p><label class="label_input">用户名</label><input type="text" name="username" class="text_field"/></p>
        <p><label class="label_input">密码</label><input type="password" name="password" class="text_field"/></p>
 
        <div id="login_control">
            <input type="submit" id="btn_login" value="登录" />
            <a id="forget_pwd" href="web/registe.jsp">注册</a>
        </div>
	</form>
	</div>
</body>
</html>
