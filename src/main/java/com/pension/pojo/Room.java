package com.pension.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Room {
    private int roomId;//房间id
    private String orientation;//房间朝向
    private String floor;//楼层
    private int price; //价格
    private int typeId;;//房间类型
    private int roomStateId;//房间状态

}
