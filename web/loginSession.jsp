<%--
  Created by IntelliJ IDEA.
  User: jeongwoo
  Date: 2020/07/24
  Time: 5:23 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Session Test</title>
    </head>
    <body>
        <%
            if(session.getAttribute("memberId") != null)    // 세션이 존재하면 로그인 OK 페이지
                response.sendRedirect("loginOk2.jsp");
        %>
        <form action="loginPro" method="post">
            ID : <input type="text" name="mID"><br>
            PW : <input type="password" name="mPW"><br>
            <input type="submit" value="login">
        </form>
    </body>
</html>
