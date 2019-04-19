package com.app.cyb.cybparent.entity.recommendation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {
    private Integer id;
    private String image_address;
    private String company;
    private Date establishtime;
    private Integer module_id;
    private String module_name;
}
