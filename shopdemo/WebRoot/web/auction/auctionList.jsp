<%@ page language="java"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css">

  </head>
  
  <body>
   
    <table>
    <tr ><td colspan="2" align="right">
    	<jsp:include page="/common/web/top.jsp"/>
    	
    </td></tr>
    <tr  valign="top">
    
    
    <td align="center">
    
    <!-- --------------------页眉板块-------------------- -->
	<div class="header">
		<!-- 设置logo -->
		<div class="logo">
			<img src="<%=request.getContextPath()%>/web/auction/images/TBlogo2.png">
		</div>
		<!-- 设置菜单 -->
		<div class="menu" onmouseleave="show_menu1()">  
			<div class="menu_title" onclick="show_menu()">
				<a href="${pageContext.servletContext.contextPath}/web/GetPsersonalServlet">个人中心</a></div>
		</div>
		<div class="menu" onmouseleave="show_menu1()">  
			<div class="menu_title" onclick="show_menu()">
				<a href="${pageContext.servletContext.contextPath}/web/CartListServlet">我的购物车</a></div>
		</div>
	
		<!-- 设置用户登录 -->
		<div class="auth">
			<ul>
				<li><a href="web/registe.jsp">注册</a></li>
				<li><a href="web/login.jsp">登录</a></li>
			</ul>
		</div>
	</div>
	<!-- --------------------正文板块-------------------- -->
	<div class="content">
		<!-- 设置广告栏 -->
		<div class="banner">
			<img src="<%=request.getContextPath()%>/web/auction/images/gg.jpg" class="banner_img">
		</div>
    	<div class="img_content">
			<ul>
    			<li>
    			<c:forEach items="${auctionList }" var="auction" begin="0" step="3">
					<img src="<%=request.getContextPath()%>/web/auction/images/sp.jpg" class="img_li">
					<div class="info">
						<h3>${auction.title }</h3>
						<p>
							${auction.description }
						</p>
						<div class="img_btn"> 
							<!-- 价格，购买logo -->
							<div class="price">${auction.price }</div>
							<!-- 购物车按钮 -->
							<div class="btn">
								<a href="${pageContext.servletContext.contextPath}${initParam.W_SERVLET_BASE}/AddCartServlet?id=${auction.id }" class="cart">
									<img src="<%=request.getContextPath()%>/web/auction/images/gm.png">
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
				</li>
				<li>
    			<c:forEach items="${auctionList }" var="auction" begin="1" step="3">
					<img src="<%=request.getContextPath()%>/web/auction/images/sp.jpg" class="img_li">
					<div class="info">
						<h3>${auction.title }</h3>
						<p>
							${auction.description }
						</p>
						<div class="img_btn"> 
							<!-- 价格，购买logo -->
							<div class="price">${auction.price }</div>
							<!-- 购物车按钮 -->
							<div class="btn">
								<a href="${pageContext.servletContext.contextPath}${initParam.W_SERVLET_BASE}/AddCartServlet?id=${auction.id }" class="cart">
									<img src="<%=request.getContextPath()%>/web/auction/images/gm.png">
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
				</li>
				<li>
    			<c:forEach items="${auctionList }" var="auction" begin="2" step="3">
					<img src="<%=request.getContextPath()%>/web/auction/images/sp.jpg" class="img_li">
					<div class="info">
						<h3>${auction.title }</h3>
						<p>
							${auction.description }
						</p>
						<div class="img_btn"> 
							<!-- 价格，购买logo -->
							<div class="price">${auction.price }</div>
							<!-- 购物车按钮 -->
							<div class="btn">
								<a href="${pageContext.servletContext.contextPath}${initParam.W_SERVLET_BASE}/AddCartServlet?id=${auction.id }" class="cart">
									<img src="<%=request.getContextPath()%>/web/auction/images/gm.png">
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
				</li>	
    		</ul>
		</div>
	</div>
	</td>
    </tr>	
	</table>
	
	<!-- --------------------页脚板块-------------------- -->
	<div class="footer">
		<p class="p2">造烛求明，读书求理© 2020 POWERED BY <span>ZY</span></p>
	</div>
	
  </body>
</html>
