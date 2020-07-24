package com.servlet.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "TempFilter")
public class TempFilter implements Filter { // Filter 인터페이스를 implements
    @Override
    public void destroy() {
        System.out.println(" ---- filter destroy() ----");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        // request filter
        req.setCharacterEncoding("UTF-8");

        chain.doFilter(req, resp); // chain 실행전 단계가 request

        // response filter
    }

    @Override
    public void init(FilterConfig config) throws ServletException {
        System.out.println(" ---- filter init() ----");
    }

}
