package com.pension.service;

import com.pension.dao.CostMapper;
import com.pension.pojo.Cost;

public class CostServiceImpl implements CostService{
    private CostMapper costMapper;

    @Override
    public Cost getCosts() {
        return costMapper.getCosts();
    }

    @Override
    public int updateCosts(Cost cost) {
        return costMapper.updateCost(cost);
    }

    public void setCostMapper(CostMapper costMapper) {
        this.costMapper = costMapper;
    }
}
