package com.pension.service;

import com.pension.dao.NurEmpMapper;
import com.pension.pojo.Count;
import com.pension.pojo.NurEmp;
import com.pension.pojo.NurUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.List;

public class NurEmpServiceImpl implements NurEmpService{
    private NurEmpMapper nurEmpMapper;

    @Override
    public List<NurEmp> getAllNurEmp() {
        return nurEmpMapper.getAllNurEmp();
    }

    @Override
    public Count getAllNurEmpCount() {
        return nurEmpMapper.getAllNurEmpCount();
    }

    @Override
    public NurEmp getNurEmpById(int empId) {
        return nurEmpMapper.getNurEmpById(empId);
    }

    @Override
    public int addUser(NurEmp nurEmp) {
        return nurEmpMapper.addNurEmp(nurEmp);
    }

    @Override
    public int deleteUser(int uuid) {
        return nurEmpMapper.deleteEmp(uuid);
    }

    public void setNurEmpMapper(NurEmpMapper nurEmpMapper) {
        this.nurEmpMapper = nurEmpMapper;
    }
}
