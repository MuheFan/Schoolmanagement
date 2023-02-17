package com.dletc.filter;


import com.dletc.entity.User;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter({"/index.jsp","/Account_Page","/Allcurriculum_Page","/choiceCurriculum_Page","/curriculum_Page","/InsertDetails_Page","/InsertSudent_Page",
        "/InsertTeacher_Page","/ITeachCourses_Page","/modify_Page","/PracticeCurriculum_Page","/Score_Page","/UpdateDetails_Page","/UpdateStudent_Page",
        "/UpdateTeacher_Page"})
public class UserFilter  implements Filter {
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


        if (user==null){
            request.getRequestDispatcher("WEB-INF/views/page_login.jsp").forward(request, resp);
        }else {
            filterChain.doFilter(req, resp);
        }
    }

    @Override
    public void destroy() {

    }
}
