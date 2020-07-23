<%--
  Created by IntelliJ IDEA.
  User: jeongwoo
  Date: 2020/07/23
  Time: 4:32 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- 에러페이지로 사용하겠다 -->
<%@ page isErrorPage="true" %>
<!-- 에러페이지로 사용하겠다 -->

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            response.setStatus(200);
            String msg = exception.getMessage();
        %>
        <h1> error msg : <%= msg %></h1>
    </body>
</html>
