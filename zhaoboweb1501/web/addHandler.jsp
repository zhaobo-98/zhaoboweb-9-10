<%@ page import="cn.imust.pojo.Customer" %>
<%@ page import="cn.imust.dao.CustomerDao" %>
<%@ page import="cn.imust.dao.impl.CustomerDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: 42434
  Date: 2019/5/18
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    String custName = request.getParameter("custName");
    String custIndustry = request.getParameter("custIndustry");
    String custSource = request.getParameter("custSource");
    String custLevel = request.getParameter("custLevel");
    String custAddress = request.getParameter("custAddress");
    String custPhone = request.getParameter("custPhone");
    Customer customer = new Customer();
    customer.setCustName(custName);
    customer.setCustIndustry(custIndustry);
    customer.setCustSource(custSource);
    customer.setCustLevel(custLevel);
    customer.setCustAddress(custAddress);
    customer.setCustPhone(custPhone);
    CustomerDao customerDao = new CustomerDaoImpl();
    boolean result = customerDao.saveCustomer(customer);
    if (result){
        request.setAttribute("message","保存客户成功");
	  		request.getRequestDispatcher("/result.jsp").forward(request,response);
    }else{
        request.setAttribute("message","保存客户成失败");
		  request.getRequestDispatcher("/result.jsp").forward(request,response);
    }
%>
</body>
</html>
