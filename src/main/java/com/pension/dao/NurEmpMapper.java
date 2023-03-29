package com.pension.dao;

import com.pension.pojo.Count;
import com.pension.pojo.NurEmp;

import java.util.List;

public interface NurEmpMapper {
    //获取全部护工
    List<NurEmp> getAllNurEmp();
    //获取护工总共数目
    Count getAllNurEmpCount();
    //通过账号获取护工
    NurEmp getNurEmpById(int empId);
    //添加护工
    int addNurEmp(NurEmp nurEmp);
    //删除护工
    int deleteEmp(int empId);
}
