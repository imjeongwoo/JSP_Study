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
            String imgDir;
            String testServerIP;
            String realServerIP;
            String connectedUser;
        %>
        <!-- application 객체는 해당 프로젝트 전체에서 공유 -->
        <%
            imgDir = application.getInitParameter("imgDir");
            testServerIP = application.getInitParameter("testServerIP");
            realServerIP = application.getInitParameter("realServerIP");

            application.setAttribute("connectedUser", "Jeong Woo"); //  setAttribute 메소드로 만들었다.
            connectedUser = (String)application.getAttribute("connectedUser"); // (String) 해줘야함!
        %>
        <p>connectedUser : <%= connectedUser%></p>
        <p>imgDir : <%= imgDir%></p>
        <p>testServerIP : <%= testServerIP%></p>
        <p>realServerIP : <%= realServerIP%></p>
    </body>
</html>
