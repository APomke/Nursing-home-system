package com.pension.service;

import com.pension.pojo.Pay;

import java.util.List;

public interface PayService {
    //添加缴费情况
    int addPay(Pay pay);
    //查询所有客户的缴费情况
    List<Pay> getPayList();
    //修改指定客户缴费情况
    int updatePay(int uuid);
}
