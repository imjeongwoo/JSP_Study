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
            session = request.getSession();
            out.print("memberId : " + session.getAttribute("memberId") + "<br>");
        %>

        <form action="logout" method="post">
            <input type="submit" value="logout">
        </form>
    </body>
</html>
