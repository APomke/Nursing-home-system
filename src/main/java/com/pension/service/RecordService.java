package com.pension.service;

import com.pension.pojo.Record;

import java.util.List;

public interface RecordService {
    //添加入住记录
    int addRecord(Record record);
    //查询全部入住记录
    List<Record> getAllRecord();
}
