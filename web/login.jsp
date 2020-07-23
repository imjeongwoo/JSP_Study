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

        <%
            Cookie[] cookies = request.getCookies(); // Cookie를 가져온다.
            System.out.println("cookies : " + cookies);

            if(cookies != null) {   // cookie가 존재할때
                for(Cookie c : cookies) {
                    // memberId 가 있으면 loginOk.jsp로 넘어감
                    if(c.getName().equals("memberId")) {
                        response.sendRedirect("loginOk.jsp");
                    }
                }
            }
        %>
        <form action="loginCon" method="post">  <!-- client의 요청이 post 방식이다.-->
            ID : <input type="text" name="mID"><br>
            PW : <input type="password" name="mPW"><br>
            <input type="submit" name="login">
        </form>
    </body>
</html>
