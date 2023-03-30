package com.pension.controller;

import com.pension.pojo.Count;
import com.pension.pojo.NurUser;
import com.pension.pojo.Pay;
import com.pension.pojo.Record;
import com.pension.service.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class UserControoler {
    @Autowired
    @Qualifier("NurUserServiceImpl")
    private NurUserService nurUserService;

    @Autowired
    @Qualifier("NurEmpServiceImpl")
    private NurEmpService nurEmpService;

    @Autowired
    @Qualifier("RoomServiceImpl")
    private RoomService roomService;

    @Autowired
    @Qualifier("PayServiceImpl")
    private PayService payService;

    @Autowired
    @Qualifier("RecordServiceImpl")
    private RecordService recordService;

    @RequestMapping("/user/userlist")
    public String userlist(HttpServletRequest request, Model model){
        List<NurUser> userlist = new ArrayList<NurUser>();
        //判断是否是查询请求
        String uuid = request.getParameter("realName");
        if (uuid != null && !uuid.equals("")){
            System.out.println("进入查询uuid为:" + uuid);
            int id = Integer.parseInt(uuid);

            NurUser nurUser = nurUserService.getNurUserById(id);
            if (nurUser != null){
                userlist.add(nurUser);
                model.addAttribute("userlist",userlist);
            }
        }else {
            userlist = nurUserService.getAllNurUser();
            model.addAttribute("userlist",userlist);
        }
        return "user";
    }

    @RequestMapping("/user/index")
    public String index(Model model){
        //获取用户总人数
        Count count = nurUserService.getAllUserConunt();
        int newcount = count.getCount();
        model.addAttribute("count",newcount);
        //获取护工总人数
        Count empCount = nurEmpService.getAllNurEmpCount();
        int newEmpCount = empCount.getCount();
        model.addAttribute("empCount",newEmpCount);
        //获取房间总共人数
        Count roomCount = roomService.getRoomCount();
        int newRoomCount = roomCount.getCount();
        model.addAttribute("roomCount",newRoomCount);
        List<Record> recordList = recordService.getAllRecord();
        model.addAttribute("recordList",recordList);
        System.out.println(recordList.toString());
        return "console1";
    }

    //添加用户界面
    @RequestMapping("/user/addUser")
    public String addUser(HttpServletRequest request, Model model){
        //判断是否是添加用户请求
        String uuid = request.getParameter("uuid");
        if (uuid != null){
            NurUser nurUser = new NurUser(
                    uuid,
                    request.getParameter("upwd"),
                    request.getParameter("uname"),
                    Integer.parseInt(request.getParameter("uage")),
                    Integer.parseInt(request.getParameter("uheight")),
                    Integer.parseInt(request.getParameter("uweight")),
                    request.getParameter("utel"),
                    request.getParameter("ucard"),
                    request.getParameter("contact"),
                    request.getParameter("contactTel"),
                    request.getParameter("history"),
                    Integer.parseInt(request.getParameter("roomId")),
                    Integer.parseInt(request.getParameter("nurStateId")),
                    request.getParameter("empId")
            );
            int s = nurUserService.addUser(nurUser);
            if (s == 1){
                //添加缴费情况
                Pay pay = new Pay(Integer.parseInt(uuid),0);
                payService.addPay(pay);

                //添加入住记录
                Date date = new Date(); // 获取当前时间
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // 创建一个日期格式化对象
                String now = dateFormat.format(date); // 将日期对象转化为字符串
                Record record = new Record(uuid,request.getParameter("uname"),now,request.getParameter("roomId"));
                recordService.addRecord(record);

                return "forward:/user/userlist";
            }else {
                model.addAttribute("msg","用户添加失败");
                return "addUser";
            }
        }
        return "addUser";
    }

    //删除用户
    @RequestMapping("/user/delete")
    public String delete(HttpServletRequest request, Model model){
        String uuid = request.getParameter("uuid");
        int s = nurUserService.deleteUser(uuid);
        if (s == 1){
            return "forward:/user/userlist";
        }else {
            model.addAttribute("msg","用户删除失败");
            return "forward:/user/userlist";
        }

    }
}
