package com.pension.service;

import com.pension.dao.PayMapper;
import com.pension.pojo.Pay;

import java.util.List;

public class PayServiceImpl implements PayService{

    private PayMapper payMapper;

    @Override
    public int addPay(Pay pay) {
        return payMapper.addPay(pay);
    }

    @Override
    public List<Pay> getPayList() {
        return payMapper.getPayList();
    }

    @Override
    public int updatePay(Pay pay) {
        return payMapper.updatePay(pay);
    }

    @Override
    public Pay getPayById(String uuid) {
        return payMapper.getPayById(uuid);
    }

    public void setPayMapper(PayMapper payMapper) {
        this.payMapper = payMapper;
    }
}
