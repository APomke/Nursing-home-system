package com.pension.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cost {
    private int hotelCost;
    private int empCost;
    private int foodCost;
    private int sundriesCost;
}
