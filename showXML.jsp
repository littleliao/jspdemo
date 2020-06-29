<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: ryx
  Date: 2020/6/22
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1>利用application读取网站配置文件<h1>
<%
        Properties props=new Properties();
        props.put("user",application.getInitParameter("user"));
        props.put("password",application.getInitParameter("pass"));
        props.put("characterEncoding",application.getInitParameter("characterEncoding"));
%>
    <%=props %>
</body>
</html>
