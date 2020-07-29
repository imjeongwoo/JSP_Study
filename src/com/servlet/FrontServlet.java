package com.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/front")
public class FrontServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int diceValue = (int)(Math.random() * 6) + 1;
        req.setAttribute("dice", diceValue);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/next");
        requestDispatcher.forward(req, resp);
    }
}
