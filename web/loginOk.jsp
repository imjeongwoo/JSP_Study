<%--
  Created by IntelliJ IDEA.
  User: jeongwoo
  Date: 2020/07/23
  Time: 10:01 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h1> Login Success Page !</h1>
        <%
            Cookie[] cookies = request.getCookies();
            for(Cookie c : cookies) {
                out.print("name : " + c.getName() + "<br>");
                out.print("value : " + c.getValue() + "<br>");
                out.print("---------------------------------<br>");
            }
        %>
    </body>
</html>
