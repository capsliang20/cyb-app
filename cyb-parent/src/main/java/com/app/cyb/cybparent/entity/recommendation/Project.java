package com.app.cyb.cybparent.entity.recommendation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {
    private Integer id;
    private String title;
    private String abstract_content;
    private String content;
    private Integer user_id;
    private Integer click_rate;
    private Integer module_id;
    private Integer follow_rate;
}
