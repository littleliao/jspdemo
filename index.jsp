<%@ page import="java.util.List" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: ryx
  Date: 2020/6/21
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
if(application.getAttribute("onlineUsers") == null){
    application.setAttribute("onlineUsers",new Vector<String>());
}
    %>
<html>
<head>
    <title>lec23 Application</title>
</head>
<body>
<div align="left">
    当前登陆用户<%=session.getAttribute("name")%>
    <%
        if (session.getAttribute("name")!=null){
            out.println("<a href='logout.jsp'>注销</a>");
        }else {
            out.println("<a href='login.html'>请登录</a>");
        }
    %>
</div>

<div align="center">
    <h3> 当前有<%=((List< String>)application.getAttribute("onlineUsers")).size()%>在线用户</h3>
    <%

        List<String > userList=(List< String>)application.getAttribute("onlineUsers");
        for (String user:userList){
           out.println(user+"<br>");
        }
    %>
</div>

</body>
</html>
