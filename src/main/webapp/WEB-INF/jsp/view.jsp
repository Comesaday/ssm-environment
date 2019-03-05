<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
	</head>
	<body>
		<div class="area">
			<div class="m-area">
				<div class="title">
					<h3>查看用户信息</h3>
				</div>
				<div class="opera"></div>
				<div class="content">
					<table>
						<thead>
							<tr>
								<td>编号</td>
								<td>用户名</td>
								<td>姓名</td>
								<td>性别</td>
								<td>电话</td>
								<td>邮件</td>
								<td>动作</td>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${page.list }" var="user" varStatus="row">
							<tr bgcolor="${row.index % 2 == 0 ? '#DDDDDD' : '#FFFFFF'}">
								<td>${user.id }</td>
								<td>${user.account }</td>
								<td>${user.name }</td>
								<td>${user.sex eq 'mail' ? '男 ': '女'}</td>
								<td>${user.phone }</td>
								<td>${user.email }</td>
								<td>
									<a href="${pageContext.request.contextPath }/user/updatePage.action?id=${user.id}&currentPage=${page.currentPage}">修改</a>
									<a href="${pageContext.request.contextPath }/user/del.action?id=${user.id}&currentPage=${page.currentPage}">删除</a>
								</td>
							</tr>
						</c:forEach>
							<tr>
								<td colspan="7">
									第${page.currentPage }页，总${page.totalPage }页，
									<c:choose>
										<c:when test="${page.hasFirst }"><a href="${pageContext.request.contextPath }/user/view.action?currentPage=1">首页</a></c:when>
										<c:otherwise><font style="color: red;">首页</font></c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${page.hasPre }"><a href="${pageContext.request.contextPath }/user/view.action?currentPage=${page.currentPage - 1 }">上一页</a></c:when>
										<c:otherwise><font style="color: red;">上一页</font></c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${page.hasNext }"><a href="${pageContext.request.contextPath }/user/view.action?currentPage=${page.currentPage + 1 }">下一页</a></c:when>
										<c:otherwise><font style="color: red;">下一页</font></c:otherwise>
									</c:choose>
										<c:choose>
										<c:when test="${page.hasLast}"><a href="${pageContext.request.contextPath }/user/view.action?currentPage=${page.totalPage }">尾页</a></c:when>
										<c:otherwise><font style="color: red;">尾页</font></c:otherwise>
									</c:choose>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
