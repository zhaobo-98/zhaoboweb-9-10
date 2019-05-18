<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>更新客户信息页面</title>
</head>
<body>
<%
	request.setAttribute("custId", request.getParameter("custId"));
%>
<h2>请输入要更新客户信息</h2>
<form action="updateHandler.jsp?custId=${custId }" method="post">
	<table cellSpacing=0 cellPadding=5  border=0>
		<c:forEach items="${results}" var="customer">
			<tr>
				<td>客户名称：</td>
				<td>
					<INPUT style="WIDTH: 180px" maxLength=50 name="custName" value="<c:out value="${customer.custName }"/>">
				</td>
				<td>所属行业 ：</td>
				<td>
					<INPUT style="WIDTH: 180px" maxLength=50 name="custIndustry" value="${customer.custIndustry }">
				</td>
			</tr>
			<tr>
				<td>信息来源 ：</td>
				<td>
					<select name="custSource" style="WIDTH: 180px" >
						<option value="non">---请选择---</option>
						<option value="电话渠道" <c:if test="${customer.custSource=='电话渠道'}">selected</c:if>>电话渠道</option>
						<option value="网络渠道" <c:if test="${customer.custSource=='网络渠道'}">selected</c:if>>网络渠道</option>
					</select>
				</td>
				<td>客户级别：</td>
				<td>
					<select name="custLevel" style="WIDTH: 180px">
						<option value="non">---请选择---</option>
						<option value="普通客户" <c:if test="${customer.custLevel=='普通客户'}">selected</c:if>>普通客户</option>
						<option value="VIP客户" <c:if test="${customer.custLevel=='VIP客户'}">selected</c:if>>VIP客户</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>联系地址 ：</td>
				<td>
					<input  style="WIDTH: 180px" maxLength=50 name="custAddress" value="${customer.custAddress}">
				</td>
				<td>联系电话 ：</td>
				<td>
					<input  style="WIDTH: 180px" maxLength=50 name="custPhone" value="${customer.custPhone}">
				</td>
			</tr>
			<tr>
				<td rowspan=2>
					<input type=submit value=" 更新 " >
				</td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>