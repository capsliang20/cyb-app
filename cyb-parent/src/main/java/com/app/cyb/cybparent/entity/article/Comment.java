package com.app.cyb.cybparent.entity.article;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Comment {
    private Integer id;
    private Integer articleId;
    private Integer type;
    private Integer articleCommentId;
    private Integer content;
    private Integer time;
}
