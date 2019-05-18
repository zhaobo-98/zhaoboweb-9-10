<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html>
  <head>
  	<title>首页</title>
  </head>
  <body>
  	<%
  		request.getRequestDispatcher("listHandler.jsp").forward(request, response);
  	 %>
  </body>
</html>