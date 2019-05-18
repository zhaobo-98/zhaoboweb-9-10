<%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/14
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>uploadFile页面</title>
</head>
<body>
    <form method="post" enctype="multipart/form-data" action="<%=request.getContextPath()%>/upload">
        <table border="0" align="center">
            <tr>
                <td>上传者:</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td>上传文件:</td>
                <td><input type="file" name="uploadFile"/></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="提交">
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
