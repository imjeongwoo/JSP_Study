package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = getServletConfig().getInitParameter("uName");
        String age = getServletConfig().getInitParameter("uAge");

        String testServerIP = getServletContext().getInitParameter("testServerIP");

        PrintWriter out = response.getWriter();
        out.print("<p>name : " + name + "</p>");
        out.print("<p>age : " + age + "</p>");
        out.print("<p>testServerIP : " + testServerIP + "</p>");


        getServletContext().setAttribute("author", "James");

    }
}
