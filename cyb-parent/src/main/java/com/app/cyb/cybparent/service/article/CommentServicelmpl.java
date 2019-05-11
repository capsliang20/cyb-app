package com.app.cyb.cybparent.service.article;


import com.app.cyb.cybparent.api.article.CommentService;
import com.app.cyb.cybparent.entity.article.Comment;
import com.app.cyb.cybparent.mapper.article.CommentMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class CommentServicelmpl implements CommentService {
    @Resource
    CommentMapper commentMapper;

    @Override
    public Integer insertComment(Comment comment){
        return commentMapper.insertComment(comment);
    };

    @Override
    public List<Comment> queryComment(Integer articleId){
        return commentMapper.queryComment(articleId);
    };
}