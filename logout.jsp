<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ryx
  Date: 2020/6/21
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  //  session.removeAttribute("name");
    List<String> userList= (List<String>) application.getAttribute("onlineUsers");
    String name= (String) session.getAttribute("name");
    userList.remove(name);
  // for (String user : userList){
    //    if (user.equals(name)){
      //          userList.remove(user);
     //       break;
      //  }
  //  }
    session.invalidate();//销毁整个session表
    response.sendRedirect("index.jsp");
%>
</body>
</html>