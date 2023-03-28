package com.pension.dao;

import com.pension.pojo.NurUser;

import java.util.List;

public interface NurUserMapper {
    //通过账号获取用户
    NurUserMapper getNurUserById(int id);
    //获取全部用户
    List<NurUser> getAllNurUser();
}
