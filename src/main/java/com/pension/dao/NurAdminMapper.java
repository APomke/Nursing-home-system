package com.pension.dao;

import com.pension.pojo.NurAdmin;
import org.apache.ibatis.annotations.Param;

public interface NurAdminMapper {
    //根据id获取用户
    NurAdmin getNurAdminById(int uuid);
    //根据账号密码获取用户
    NurAdmin getNurAdminByAdldAndAdpwd(@Param("Username") String username,@Param("Password") String password);
}
