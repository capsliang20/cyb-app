package com.app.cyb.cybparent.entity.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer id;
    private String name;
    private String account;
    private String password;
    private String introduction;
    private String imageAddress;
}
