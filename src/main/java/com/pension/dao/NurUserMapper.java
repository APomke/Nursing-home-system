package com.pension.dao;

import com.pension.pojo.Count;
import com.pension.pojo.NurUser;
import org.apache.ibatis.annotations.Param;

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
    //通过账号密码获取用户
    NurUser getUserByUuidAndPwd(@Param("Username") String username,@Param("Password") String password);
}
