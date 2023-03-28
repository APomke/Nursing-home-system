package com.pension.controller;

import com.pension.pojo.NurUser;
import com.pension.service.NurUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserControoler {
    @Autowired
    @Qualifier("NurUserServiceImpl")
    private NurUserService nurUserService;

    @RequestMapping("/user/userlist")
    public String userlist(Model model){
        List<NurUser> userlist = nurUserService.getAllNurUser();
        System.out.println(userlist.toString());
        model.addAttribute("userlist",userlist);
        return "user";
    }
}
