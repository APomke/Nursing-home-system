package com.pension.service;

import com.pension.dao.RecordMapper;
import com.pension.pojo.Record;

import java.util.List;

public class RecordServiceImpl implements RecordService{
    private RecordMapper recordMapper;
    @Override
    public int addRecord(Record record) {
        return recordMapper.addRecord(record);
    }

    @Override
    public List<Record> getAllRecord() {
        return recordMapper.getAllRecord();
    }

    public void setRecordMapper(RecordMapper recordMapper) {
        this.recordMapper = recordMapper;
    }
}
