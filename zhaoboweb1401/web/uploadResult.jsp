<%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/15
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>uploadResult页面</title>
</head>
<body>
<%
    request.getAttribute("message");
%>
<p>${message}</p>
<a href="<%=request.getContextPath()%>/downloadFile.jsp">点此进入下载页面</a>
</body>
</html>
