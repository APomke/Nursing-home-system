package com.pension.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NurEmp {
    private String empId;
    private String empPwd;
    private String empName;
    private String empTel;
}
