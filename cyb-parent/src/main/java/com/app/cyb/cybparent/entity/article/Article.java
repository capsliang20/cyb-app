package com.app.cyb.cybparent.entity.article;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.lang.Enum;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Article {
    private Integer id;
    private String title;
    private String content;
    private Integer userId;
    private Integer clickRate;
    private String moduleName;
    private Integer followRate;
}







