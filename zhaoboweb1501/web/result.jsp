<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
  	<title>Result页面</title>
  </head>
  <body>
 	<c:out value="${message }" />
 	<a href="listHandler.jsp">查看客户信息</a>
  </body>
</html>