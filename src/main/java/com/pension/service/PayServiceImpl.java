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
    public int updatePay(int uuid) {
        return payMapper.updatePay(uuid);
    }

    public void setPayMapper(PayMapper payMapper) {
        this.payMapper = payMapper;
    }
}
