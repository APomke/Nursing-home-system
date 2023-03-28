package com.pension.service;

import com.pension.dao.NurAdminMapper;
import com.pension.dao.NurUserMapper;
import com.pension.pojo.NurUser;

import java.util.List;

public class NurUserServiceImpl implements NurUserService{

    private NurUserMapper nurUserMapper;

    @Override
    public NurUserMapper getNurUserById(int id) {
        return nurUserMapper.getNurUserById(id);
    }

    @Override
    public List<NurUser> getAllNurUser() {
        return nurUserMapper.getAllNurUser();
    }

    public void setNurUserMapper(NurUserMapper nurUserMapper) {
        this.nurUserMapper = nurUserMapper;
    }
}
