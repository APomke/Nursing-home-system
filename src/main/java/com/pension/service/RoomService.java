package com.pension.service;

import com.pension.pojo.Count;
import com.pension.pojo.Room;

import java.util.List;

public interface RoomService {
    //获取所有房间
    List<Room> getAllRoom();
    //获取房间总共数目
    Count getRoomCount();
    //根据id获取房间
    Room getRoomById(int roomId);
    //添加房间
    int addRoom(Room room);
    //删除房间
    int deleteRoom(int roomId);
}
