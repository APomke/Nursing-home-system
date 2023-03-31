package com.pension.controller;

import com.pension.pojo.Cost;
import com.pension.pojo.NurUser;
import com.pension.pojo.Pay;
import com.pension.service.CostService;
import com.pension.service.PayService;
import com.pension.utils.Constants;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PayController {
    @Autowired
    @Qualifier("CostServiceImpl")
    private CostService costService;

    @Autowired
    @Qualifier("PayServiceImpl")
    private PayService payService;

    @RequestMapping("/pay/cost")
    public String cost(HttpServletRequest request, Model model){
        //判断用户是否缴费
        NurUser nurUser = (NurUser) request.getSession().getAttribute(Constants.USER_SESSIOND);
        String uuid = nurUser.getUuid();
        Pay pay = payService.getPayById(uuid);
        if (pay.getIspay() == 0){
            Cost cost = costService.getCosts();
            model.addAttribute("cost",cost);
            return "costlist";
        }else {
            return "paySuccess";
        }
    }

    @RequestMapping("/pay/payto")
    public String payto(HttpServletRequest request,Model model){
        NurUser nurUser = (NurUser) request.getSession().getAttribute(Constants.USER_SESSIOND);
        String uuid = nurUser.getUuid();
        Pay pay = payService.getPayById(uuid);
        pay.setIspay(1);
        payService.updatePay(pay);
        return "paySuccess";

    }
}
