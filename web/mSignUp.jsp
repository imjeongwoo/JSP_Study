<%--
  Created by IntelliJ IDEA.
  User: jeongwoo
  Date: 2020/07/23
  Time: 4:28 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%!
            String m_name;
            String m_pass;
            String[] m_hobby;
        %>

        <%
            m_name = request.getParameter("m_name");
            m_pass = request.getParameter("m_pass");
            m_hobby = request.getParameterValues("m_hobby");
        %>

        m_name : <%= m_name%><br>
        m_pass : <%= m_pass%><br>
        m_hobby :
        <%
            for(int i=0; i<m_hobby.length; i++) {
        %>
        <%= m_hobby[i] %>
        <%
            }
        %><br>
    </body>
</html>
