package com.app.cyb.cybparent.entity.article;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {
    private Integer id;
    private String imageAddress;
    private String company;
    private String website;
    private Date establishTime;
    private String address;
    private String abstr;
    private String state;
    private Integer moduleId;
    private Integer userId;
    private Integer focusRate;
    private Integer clickRate;
}
