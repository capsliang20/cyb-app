package com.app.cyb.cybparent.entity.recommendation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SArticle{
    private Integer id;
    private String title;
    private Integer module_id;
    private String module_name;
}
