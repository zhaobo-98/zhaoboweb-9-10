<%@ page import="cn.imust.dao.CustomerDao" %>
<%@ page import="cn.imust.dao.impl.CustomerDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/18
  Time: 17:26
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
    String custId = request.getParameter("custId");
    int id = 0;
    if (custId != null){
        id = Integer.parseInt(custId);
    }
    boolean result = customerDao.deleteCustomer(id);
    if (result){
        request.setAttribute("message","删除客户成功");
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }else{
        request.setAttribute("message","删除客户失败");
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }
%>
</body>
</html>
