package com.pension.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NurAdmin {
    private int id;
    private String adld;//账号
    private String adPwd;//密码
    private String adName;//昵称
    private String getTel;//电话号码

}
