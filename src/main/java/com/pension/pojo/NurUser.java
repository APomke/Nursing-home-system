package com.pension.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NurUser {
    private String uuid;//账号
    private String upwd;//密码
    private String uname;//姓名
    private int uage;//年龄
    private int uheight;//身高
    private int uweight;//体重
    private String utel;//手机号
    private String ucard;//身份证
    private String contact;//联系人
    private String contacTel;//联系人电话
    private String history;//病史
    private int roomId;//房间编号
    private int unrStatId;//在院状态
    private String empId;//护工账号
}
