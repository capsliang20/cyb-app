package com.app.cyb.cybparent.entity.article;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Comment {
    private Integer id;
    private Integer userId;
    private Integer articleId;
    private Integer type;
    private Integer articleCommentId;
    private String content;
    private Date time;
}
