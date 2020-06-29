<%--
  Created by IntelliJ IDEA.
  User: ryx
  Date: 2020/6/20
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.UserDao" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
username=<%=request.getParameter("username")%>
password=<%=request.getParameter("password")%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

    if(UserDao.login(username,password)){
    out.println("welcome "+username);
    session.setAttribute("name",username);//创建session对象
        List<String> userList=(List<String>)(application.getAttribute("onlineUsers"));
        userList.add(username);
    response.sendRedirect("index.jsp");
}else {
    out.println("登陆失败");
    response.sendRedirect("login.html");
}
%>


</body>
</html>
