package com.pension.dao;

import com.pension.pojo.Cost;

public interface CostMapper {
    //获取所有服务缴费价格
    Cost getCosts();
    //修改服务价格
    int updateCost(Cost cost);
}
