package com.pension.controller;

import com.pension.pojo.Cost;
import com.pension.pojo.Pay;
import com.pension.service.CostService;
import com.pension.service.PayService;
import com.pension.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CostController {
    @Autowired
    @Qualifier("CostServiceImpl")
    private CostService costService;

    @Autowired
    @Qualifier("PayServiceImpl")
    private PayService payService;

    @RequestMapping("/cost/status")
    public String status(Model model){
        List<Pay> payList = payService.getPayList();
        model.addAttribute("payList",payList);
        return "costStatus";
    }


    @RequestMapping("/cost/costlist")
    public String costlist(Model model){
        Cost cost = costService.getCosts();
        model.addAttribute("cost",cost);
        return "cost";
    }

    @RequestMapping("/cost/edit")
    public String editHotel(HttpServletRequest request,Model model){
        //判断是否是修改请求
        String hotelCost = request.getParameter("hotelCost");
        if (hotelCost != null){
            Cost cost = new Cost(
                    Integer.parseInt(hotelCost),
                    Integer.parseInt(request.getParameter("empCost")),
                    Integer.parseInt(request.getParameter("foodCost")),
                    Integer.parseInt(request.getParameter("sundriesCost"))
                    );

            int s = costService.updateCosts(cost);
            if (s == 1){
                return "forward:/cost/costlist";
            }else {
                model.addAttribute("msg","价格修改失败");
                return "forward:/cost/costlist";
            }
        }
        Cost cost = costService.getCosts();
        model.addAttribute("cost",cost);
        return "costEdit";
    }
}
