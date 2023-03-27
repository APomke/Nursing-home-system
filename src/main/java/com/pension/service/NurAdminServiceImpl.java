package com.pension.service;

import com.pension.dao.NurAdminMapper;
import com.pension.pojo.NurAdmin;

public class NurAdminServiceImpl implements NurAdminService{
    private NurAdminMapper nurAdminMapper;

    @Override
    public NurAdmin getNurAdminById(int id) {
        return nurAdminMapper.getNurAdminById(id);
    }

    @Override
    public NurAdmin getNurAdminByAdldAndAdpwd(String username, String password) {
        return nurAdminMapper.getNurAdminByAdldAndAdpwd(username,password);
    }

    public void setNurAdminMapper(NurAdminMapper nurAdminMapper) {
        this.nurAdminMapper = nurAdminMapper;
    }
}
