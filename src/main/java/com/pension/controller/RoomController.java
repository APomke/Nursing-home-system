package com.pension.controller;

import com.pension.pojo.NurEmp;
import com.pension.pojo.NurUser;
import com.pension.pojo.Room;
import com.pension.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RoomController {

    @Autowired
    @Qualifier("RoomServiceImpl")
    private RoomService roomService;

    //获取房间列表
    @RequestMapping("/room/roomlist")
    public String roomlist(HttpServletRequest request, Model model) {
        List<Room> roomlist = new ArrayList<Room>();
        //判断是不是查询请求
        String roomId = request.getParameter("realName");
        if (roomId != null && !roomId.equals("")){
            System.out.println("进入查询,roomId为:" + roomId);
            int id = Integer.parseInt(roomId);

            Room room = roomService.getRoomById(id);
            if (room != null){
                roomlist.add(room);
                model.addAttribute("roomList",roomlist);
            }
        }else {
            roomlist = roomService.getAllRoom();
            model.addAttribute("roomList",roomlist);
        }
        return "room";
    }

    //添加房间界面
    @RequestMapping("/room/addRoom")
    public String addRoom(HttpServletRequest request, Model model){
        //判断是否是添加用户请求
        String roomId = request.getParameter("roomId");
        if (roomId != null && !roomId.equals("")){
            int id = Integer.parseInt(roomId);
            Room room = new Room(id,
                    request.getParameter("orientation"),
                    request.getParameter("floor"),
                    Integer.parseInt(request.getParameter("price")),
                    Integer.parseInt(request.getParameter("typeId")),
                    Integer.parseInt(request.getParameter("roomStateId"))
            );
            int s = roomService.addRoom(room);
            if (s == 1){
                return "forward:/room/roomlist";
            }else {
                model.addAttribute("msg","房间添加失败");
                return "forward:/room/roomlist";
            }
        }
        return "addRoom";
    }

    //删除房间
    @RequestMapping("/room/deleteRoom")
    public String deleteRoom(HttpServletRequest request, Model model){
        String roomId = request.getParameter("roomId");
        int id = Integer.parseInt(roomId);
        int s = roomService.deleteRoom(id);
        if (s == 1){
            return "forward:/room/roomlist";
        }else {
            model.addAttribute("msg","房间删除失败");
            return "forward:/room/roomlist";
        }
    }
}
