<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>主页面</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
	</head>
	<body>
		<div id="container">
			<div class="header">
				<div class="logo"><h3>信息管理系统</h3></div>
				<div class="info">
					<div class="pic"></div>
					<div class="ope"></div>
				</div>
			</div>
			<div class="center">
				<div class="menu">
					<ul>
						<li><a href="${pageContext.request.contextPath }/user/view.action?currentPage=1" target="main">查看</a></li>
						<li><a href="${pageContext.request.contextPath }/user/add.action" target="main">添加</a></li>
					</ul>
				</div>
				<div class="main">
					<div class="mainarea">
						<iframe src="${pageContext.request.contextPath }/user/main.action" frameborder="0" width="100%" height="100%" name="main"></iframe>
					</div>
					<div class="footer"></div>
				</div>
			</div>
		</div>
	</body>
</html>
