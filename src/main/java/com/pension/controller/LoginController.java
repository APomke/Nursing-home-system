package com.pension.controller;

import com.pension.pojo.Count;
import com.pension.pojo.NurAdmin;
import com.pension.service.NurAdminService;
import com.pension.service.NurUserService;
import com.pension.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
    @Qualifier("NurAdminServiceImpl")
    private NurAdminService nurAdminService;

    @Autowired
    @Qualifier("NurUserServiceImpl")
    private NurUserService nurUserService;

    @PostMapping("/login")
    public String login(HttpServletRequest request,Model model){
        //获取传入的用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        NurAdmin nurAdmin = nurAdminService.getNurAdminByAdldAndAdpwd(username,password);
        //如果有这个人
        if (nurAdmin != null){
            //把用户信息存入到session
            request.getSession().setAttribute(Constants.USER_SESSION,nurAdmin);
            //跳转到主页
            System.out.println("登入成功");
            return "index";
        } else {
            System.out.println("登入失败");
            String loginfailed = "登入失败";
            request.setAttribute("loginfailed",loginfailed);
            model.addAttribute("loginfailed",loginfailed);
            return "forward:login.jsp";
        }
    }
}
