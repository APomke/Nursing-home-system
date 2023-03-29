package com.pension.dao;

import com.pension.pojo.Count;
import com.pension.pojo.NurUser;

import java.util.List;

public interface NurUserMapper {
    //通过账号获取用户
    NurUser getNurUserById(int id);
    //获取全部用户
    List<NurUser> getAllNurUser();
    //获取用户总人数
    Count getAllUserConunt();
    //添加用户
    int addUser(NurUser nurUser);
    //删除用户
    int deleteUser(String uuid);
}
