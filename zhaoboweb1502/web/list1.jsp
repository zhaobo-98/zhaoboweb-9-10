<%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/15
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.imust.bean.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/screen.css" type="text/css" />
    <title>测试displayTag标签库</title>
</head>
<body>
<!-- 1.创建应该List集合,存放Guestbook类对象-->
<%
    List list = new ArrayList<>();
    Guestbook guestbook1 = new Guestbook();
    Guestbook guestbook2 = new Guestbook();
    Guestbook guestbook3 = new Guestbook();
    guestbook1.setId(1);
    guestbook1.setName("张三");
    list.add(guestbook1);
    guestbook2.setId(2);
    guestbook2.setName("李四");
    list.add(guestbook2);
    guestbook3.setId(3);
    guestbook3.setName("王五");
    list.add(guestbook3);
    request.setAttribute("list",list);
%>
<!-- 2.用displayTag把list显示出来-->
<display:table name="${list}" pagesize="2" export="true">
    <display:column property="id" title="编号" sortable="true"></display:column>
    <display:column property="name" title="作者" sortable="true"></display:column>
</display:table>
</body>
</html>
