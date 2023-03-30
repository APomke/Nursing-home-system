package com.pension.dao;

import com.pension.pojo.Record;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

public interface RecordMapper {
    //添加入住记录
    int addRecord(Record record);
    //查询全部入住记录
    List<Record> getAllRecord();
}
