package com.pension.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(){
        System.out.println("进入login控制器");
//        return "forward:login.jsp";
        return "forward:index.jsp";
    }
}
