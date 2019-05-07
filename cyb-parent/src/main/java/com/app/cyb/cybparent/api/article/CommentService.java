package com.app.cyb.cybparent.api.article;
import com.app.cyb.cybparent.entity.article.Comment;
import java.util.List;

public interface CommentService {
    Integer insertComment(Comment comment);
    List<Comment> queryComment(Integer articleId);
}
