<%--
  Created by IntelliJ IDEA.
  User: jeongwoo
  Date: 2020/07/23
  Time: 4:41 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%!
            String adminId;
            String adminPw;
        %>
        <!-- 서블릿 초기화 될때 저장된 정모를 get한다.-->
        <%
            adminId = config.getInitParameter("adminId");
            adminPw = config.getInitParameter("adminPw");
        %>
        <!-- 서블릿 초기화 될때 저장된 정모를 get한다.-->
        <p>adminId : <%= adminId%></p>
        <p>adminPw : <%= adminPw%></p>
    </body>
</html>
