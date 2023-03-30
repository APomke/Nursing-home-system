package com.pension.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Record {
    private String uuid;
    private String uname;
    private String startDate;
    private String roomId;
}
