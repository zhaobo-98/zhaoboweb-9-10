<%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/14
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>downloadFile页面</title>
</head>
<body>
    请选择下载的文件:<br/>
    <a href="<%=request.getContextPath()%>/download?file=a.txt">下载文件a.txt</a>
    <a href="<%=request.getContextPath()%>/download?file=b.txt">下载文件b.txt</a>
</body>
</html>
