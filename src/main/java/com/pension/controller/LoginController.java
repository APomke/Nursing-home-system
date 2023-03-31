package com.pension.controller;

import com.pension.pojo.Count;
import com.pension.pojo.NurAdmin;
import com.pension.pojo.NurUser;
import com.pension.service.NurAdminService;
import com.pension.service.NurUserService;
import com.pension.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

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
        //判断其是管理员还是用户
        if (Objects.equals(username, "311252")){
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
        }else {
            NurUser nurUser = nurUserService.getUserByUuidAndPwd(username,password);
            if (nurUser != null){
                //把用户信息存入到session
                request.getSession().setAttribute(Constants.USER_SESSIOND,nurUser);
                //跳转到主页
                System.out.println("登入成功");
                return "forward:index.jsp";
            }else {
                String loginfailed = "登入失败";
                request.setAttribute("loginfailed",loginfailed);
                model.addAttribute("loginfailed",loginfailed);
                return "forward:login.jsp";
            }
        }
    }

    @RequestMapping("/loginout")
    public String loginout(HttpServletRequest request,Model model){
        //判断是否是管理员
        Object o  = request.getSession().getAttribute(Constants.USER_SESSION);
        if (o == null){
            //移除用户的session信息
            request.getSession().removeAttribute(Constants.USER_SESSIOND);
            return "forward:index.jsp";
        }
        request.getSession().removeAttribute(Constants.USER_SESSION);
        return "forward:index.jsp";
    }
}
