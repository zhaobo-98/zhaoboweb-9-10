<%@ page import="cn.imust.pojo.Customer" %>
<%@ page import="cn.imust.dao.CustomerDao" %>
<%@ page import="cn.imust.dao.impl.CustomerDaoImpl" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html>
  <head>
  	<title>添加客户信息页面</title>
  </head>
  <body>
  <h2>请输入要添加的客户信息</h2>
  <a href="listHandler.jsp">查看客户信息</a>
  <form action="addHandler.jsp" method="post">
		<table cellSpacing=0 cellPadding=5  border=0>
				<tr>
					<td>客户名称：</td>
					<td>
						<INPUT style="WIDTH: 180px" maxLength=50 name="custName">
					</td>
					<td>所属行业 ：</td>
						<td>
							<INPUT style="WIDTH: 180px" maxLength=50 name="custIndustry">
						</td>
				</tr>							
				<tr>	
					<td>信息来源 ：</td>
					<td>
						<select name="custSource" style="WIDTH: 180px">
							<option value="non">---请选择---</option>
							<option value="电话渠道">电话渠道</option>
							<option value="网络渠道">网络渠道</option>
						</select>
					</td>
					<td>客户级别：</td>
					<td>
						<select name="custLevel" style="WIDTH: 180px">
							<option value="non">---请选择---</option>
								<option value="普通客户">普通客户</option>
								<option value="VIP客户">VIP客户</option>
						</select>								
					</td>
				</tr>
				<tr>
					<td>联系地址 ：</td>
					<td>
						<input  style="WIDTH: 180px" maxLength=50 name="custAddress">
					</td>
					<td>联系电话 ：</td>
					<td>
						<input  style="WIDTH: 180px" maxLength=50 name="custPhone">
					</td>
				</tr>
				<tr>
					<td rowspan=2>
						<input type=submit value=" 保存 " >
					</td>
				</tr>
		</table>
	</form>
  </body>
</html>