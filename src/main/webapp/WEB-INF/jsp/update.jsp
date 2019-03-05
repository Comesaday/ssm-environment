<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
	</head>
	<body>
		<div class="area">
			<div class="m-area">
				<div class="title">
					<h3>修改用户信息</h3>
				</div>
				<div class="opera"></div>
				<div class="content">
					<form action="${pageContext.request.contextPath }/user/update.action" method="post">
						<input type="hidden" name="user.id" value="${user.id }">
						<input type="hidden" name="currentPage" value="${currentPage }">
						<table>
							<tr>
								<td>用户名</td>
								<td><input type="text" name="user.account" value="${user.account }"></td>
							</tr>
							<tr>
								<td>密码</td>
								<td><input type="text" name="user.password" value="${user.password }"></td>
							</tr>
							<tr>
								<td>姓名</td>
								<td><input type="text" name="user.name" value="${ user.name}"></td>
							</tr>
							<tr>
								<td>性别</td>
								<td>
									${user.sex eq 'mail' ? '<input type="radio" name="user.sex" value="mail" checked="checked">男' : '<input type="radio" name="user.sex" value="mail">男'}
									${user.sex eq 'femail' ? '<input type="radio" name="user.sex" value="femail" checked="checked">女' : '<input type="radio" name="user.sex" value="femail">女'}
								</td>
							</tr>
							<tr>
								<td>电话</td>
								<td><input type="text" name="user.phone" value="${user.phone }"></td>
							</tr>
							<tr>
								<td>邮件</td>
								<td><input type="text" name="user.email" value="${user.email }"></td>
							</tr>
							<tr>
								<td></td>
								<td><input type="submit" value="提交"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
