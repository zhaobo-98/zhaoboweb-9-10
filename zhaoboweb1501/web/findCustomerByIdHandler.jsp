<%@ page import="cn.imust.dao.CustomerDao" %>
<%@ page import="cn.imust.dao.impl.CustomerDaoImpl" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/18
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String custId = request.getParameter("custId");
    int id = 0;
    if (custId != null){
        id = Integer.parseInt(custId);
    }
    CustomerDao customerDao = new CustomerDaoImpl();
    List list = customerDao.findCustomerById(id);
    request.setAttribute("results",list);
    request.getRequestDispatcher("/updateCustomer.jsp").forward(request,response);
%>
</body>
</html>
