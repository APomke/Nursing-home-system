package com.pension.controller;

import com.pension.pojo.NurEmp;
import com.pension.pojo.NurUser;
import com.pension.service.NurEmpService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class EmpController {
    @Autowired
    @Qualifier("NurEmpServiceImpl")
    private NurEmpService nurEmpService;

    @RequestMapping("/emp/emplist")
    public String emplist(HttpServletRequest request,Model model){
        List<NurEmp> emplist = new ArrayList<NurEmp>();
        //判断是否是查询请求
        String empId = request.getParameter("realName");
        if (empId != null && !empId.equals("")){
            System.out.println("进入查询,empId为:" + empId);
            int id = Integer.parseInt(empId);

            NurEmp nurUser = nurEmpService.getNurEmpById(id);
            if (nurUser != null){
                emplist.add(nurUser);
                model.addAttribute("empList",emplist);
            }
        }else {
            emplist = nurEmpService.getAllNurEmp();
            model.addAttribute("empList",emplist);
        }
        return "emp";
    }

    @RequestMapping("/emp/addEmp")
    public String addEmp(HttpServletRequest request,Model model){
        //判断是否是添加用户请求
        String empId = request.getParameter("empId");
        if (empId != null && !empId.equals("")){
            NurEmp nurEmp = new NurEmp(empId,
                    request.getParameter("empPwd"),
                    request.getParameter("empName"),
                    request.getParameter("empTel")
            );
            int s = nurEmpService.addUser(nurEmp);
            if (s == 1){
                return "forward:/emp/emplist";
            }else {
                model.addAttribute("msg","护工添加失败");
                return "forward:/emp/emplist";
            }
        }

        return "addEmp";
    }

    //删除护工
    @RequestMapping("/emp/deleteEmp")
    public String deleteEmp(HttpServletRequest request, Model model){
        String empId = request.getParameter("empId");
        int id = Integer.parseInt(empId);
        int s = nurEmpService.deleteUser(id);
        if (s == 1){
            return "forward:/emp/emplist";
        }else {
            model.addAttribute("msg","护工删除失败");
            return "forward:/emp/emplist";
        }
    }
}
