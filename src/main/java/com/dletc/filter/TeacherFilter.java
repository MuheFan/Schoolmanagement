package com.dletc.filter;


import com.dletc.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter({"/ITeachCourses_Page"})
public class TeacherFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");

        //        向下转型
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");


        if (user.getUtype().equals("老师")){
            filterChain.doFilter(req, resp);
        }else {
            request.getRequestDispatcher("WEB-INF/views/404.jsp").forward(request, resp);
        }
    }

    @Override
    public void destroy() {

    }
}
