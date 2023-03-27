package com.pension.service;

import com.pension.pojo.NurAdmin;

public interface NurAdminService {
    NurAdmin getNurAdminById(int id);

    //根据账号密码获取用户
    NurAdmin getNurAdminByAdldAndAdpwd(String username,String password);

}
