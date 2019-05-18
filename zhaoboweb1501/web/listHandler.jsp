<%@ page import="cn.imust.dao.CustomerDao" %>
<%@ page import="cn.imust.dao.impl.CustomerDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.imust.pojo.Customer" %><%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/18
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    CustomerDao customerDao = new CustomerDaoImpl();
    List list = customerDao.findAllCustomer();
    request.setAttribute("results",list);
    request.getRequestDispatcher("/list.jsp").forward(request,response);
%>
</body>
</html>
