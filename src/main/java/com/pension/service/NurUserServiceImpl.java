package com.pension.service;

import com.pension.dao.NurAdminMapper;
import com.pension.dao.NurUserMapper;
import com.pension.pojo.Count;
import com.pension.pojo.NurUser;

import java.util.List;

public class NurUserServiceImpl implements NurUserService{

    private NurUserMapper nurUserMapper;

    @Override
    public NurUser getNurUserById(int id) {
        return nurUserMapper.getNurUserById(id);
    }

    @Override
    public List<NurUser> getAllNurUser() {
        return nurUserMapper.getAllNurUser();
    }

    @Override
    public Count getAllUserConunt() {
        return nurUserMapper.getAllUserConunt();
    }

    @Override
    public int addUser(NurUser nurUser) {
        return nurUserMapper.addUser(nurUser);
    }

    @Override
    public int deleteUser(String uuid) {
        return nurUserMapper.deleteUser(uuid);
    }

    @Override
    public NurUser getUserByUuidAndPwd(String username, String password) {
        return nurUserMapper.getUserByUuidAndPwd(username,password);
    }

    public void setNurUserMapper(NurUserMapper nurUserMapper) {
        this.nurUserMapper = nurUserMapper;
    }
}
