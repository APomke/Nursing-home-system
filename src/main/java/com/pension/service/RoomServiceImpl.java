package com.pension.service;

import com.pension.dao.RoomMapper;
import com.pension.pojo.Count;
import com.pension.pojo.Room;

import java.util.List;

public class RoomServiceImpl implements RoomService{
    private RoomMapper roomMapper;

    @Override
    public List<Room> getAllRoom() {
        return roomMapper.getAllRoom();
    }

    @Override
    public Count getRoomCount() {
        return roomMapper.getRoomCount();
    }

    @Override
    public Room getRoomById(int roomId) {
        return roomMapper.getRoomById(roomId);
    }

    @Override
    public int addRoom(Room room) {
        return roomMapper.addRoom(room);
    }

    @Override
    public int deleteRoom(int roomId) {
        return roomMapper.deleteRoom(roomId);
    }

    public void setRoomMapper(RoomMapper roomMapper) {
        this.roomMapper = roomMapper;
    }
}
