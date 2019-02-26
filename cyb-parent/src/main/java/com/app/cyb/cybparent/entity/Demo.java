package com.app.cyb.cybparent.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Demo {
    private Integer id;
    private String name;
    private Long phoneNumber;
    private String email;
}
