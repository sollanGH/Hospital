<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
      Date date = new Date();  //获取日期对象
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //获取当前系统日期
   String today = df.format(date);
  %>
<title><%=today %></title>
</head>
<body>

</body>
</html>
