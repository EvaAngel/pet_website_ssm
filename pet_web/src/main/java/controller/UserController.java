package controller;

import bo.ResultSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import po.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/isLogin")
    public void isLogin(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
        //1 获取表单提交数据
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //2 调用api登陆验证服务接口
        ResultSet<User> resultSet = new ResultSet<>();
        resultSet = userService.isLogin(username, password);
        //3 若验证成功，将用户信息存入session中，请求转发到核心页面
        if (resultSet.isTrue()) {
            session.setAttribute("user", resultSet.getData());
            request.getRequestDispatcher(request.getContextPath() + "/video/video.jsp").forward(request, response);
            //response.sendRedirect("../../video/video.jsp");
        }

        //4 否则，重定向到登陆页面
        else {
            response.sendRedirect("../../user/login.jsp");
        }
    }

    @RequestMapping("/mes_valid")
    public void isValid(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
        String code = request.getParameter("code");
        request.getRequestDispatcher(request.getContextPath() + "/test/message.jsp").forward(request, response);
    }

    /*
    * sql注入验证版
    * */
    @RequestMapping("/isLogin2")
    public void isLogin2(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
        //1 获取表单提交数据2
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //2 调用api登陆验证服务接口2
        User user=userService.isLogin2(username,password);
        //3 若验证成功，将用户信息存入session中，请求转发到核心页面2
        if (user!=null) {
            session.setAttribute("user",user);
            request.getRequestDispatcher(request.getContextPath() + "/video/video.jsp").forward(request, response);
            //response.sendRedirect("../../video/video.jsp");
        }

        //4 否则，重定向到登陆页面
        else {
            response.sendRedirect("../../user/login.jsp");
        }
    }
}