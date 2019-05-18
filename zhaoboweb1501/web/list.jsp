<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
  	<title>客户信息页面</title>
  	<script language=javascript>
	function isDelete(custId){
		var sure = window.confirm("确定要删除此客户信息吗？");
		if(sure){
			window.location.href = "${pageContext.request.contextPath}/deleteHandler.jsp?custId="+custId;
		}
	}
	function isUpdate(custId){
		var sure = window.confirm("确定要修改此客户信息吗？");
		if(sure){
			window.location.href = "${pageContext.request.contextPath}/findCustomerByIdHandler.jsp?custId="+custId;
		}
	}
	</script>
  </head>
  <body>
  		<h1>客户信息页面</h1>
  		<h2><a href="addCustomer.jsp">添加客户</a></h2>
		<table borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
			<tbody>
			<h1>客户信息</h1>
				<tr>
					<td>
						<table style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc" cellSpacing=1 cellPadding=2 rules=all border=0>
							<tbody>
								<tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>客户名称</td>
									<td>客户级别</td>
									<td>客户来源</td>
									<td>所属行业</td>
									<td>联系地址</td>
									<td>联系电话</td>
									<td>操作</td>
								</tr>
							<c:forEach items="${results}" var="customer">
							<tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
									<td>${customer.custName }</td>
									<td>${customer.custLevel }</td>
									<td>${customer.custSource }</td>
									<td>${customer.custIndustry }</td>
									<td>${customer.custAddress }</td>
									<td>${customer.custPhone }</td>
									<td>
										<a href="javascript:isUpdate('${customer.custId}')">修改</a>
													&nbsp;&nbsp;
										<a href="javascript:isDelete('${customer.custId}')" >删除</a>
									</td>
							</tr>	
							</c:forEach>
							</tbody>
						</table>
					</td>
			</tr>
		</tbody>
	</table>
  </body>
</html>