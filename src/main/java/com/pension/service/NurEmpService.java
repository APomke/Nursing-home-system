package com.pension.service;

import com.pension.pojo.Count;
import com.pension.pojo.NurEmp;
import java.util.List;

public interface NurEmpService {
    //获取全部护工
    List<NurEmp> getAllNurEmp();
    //获取护工总共数目
    Count getAllNurEmpCount();
    //通过账号获取护工
    NurEmp getNurEmpById(int empId);
    //添加用户
    int addUser(NurEmp nurEmp);
    //删除用户
    int deleteUser(int uuid);
}
