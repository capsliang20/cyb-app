package com.app.cyb.cybparent.service.article;

import com.app.cyb.cybparent.api.article.ArticleService;
import com.app.cyb.cybparent.entity.article.Article;
import com.app.cyb.cybparent.mapper.article.ArticleMapper;
import com.app.cyb.cybparent.mapper.article.CommentMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.app.cyb.cybparent.entity.article.Comment;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

@Service
@Transactional
public class ArticleServicelmpl implements ArticleService {
    @Resource
    ArticleMapper articleMapper;

    @Resource
    CommentMapper commentMapper;

    @Override
    public Integer insertArticle(Article article){
        return articleMapper.insertArticle(article);
    };

    @Override
    public List<Integer> queryIdByTitle(String title){
        return articleMapper.queryIdByTitle(title);
    };

    @Override
    public List<Article> queryByUserId(Integer userId){
        return articleMapper.queryByUserId(userId);
    };

    @Override
    public List<Comment> getComment(Integer articleId){
        List<Integer> commentId = articleMapper.commentIdByArticleId(articleId);
        List<Comment> comments = new ArrayList<>();
        for(int i= 0; i < commentId.size(); ++i){
            Comment comment = commentMapper.commentById(commentId.get(i));
            comments.add(comment);
        }
        return comments;
    }

    @Override
    public List<Article> queryByModuleName(String moduleName){
        return articleMapper.queryByModuleName(moduleName);
    };

    @Override
    public String moduleName(Integer moduleId){
        return articleMapper.moduleName(moduleId);
    };

    @Override
    public Article queryArticle(Integer id){
        return articleMapper.queryArticle(id);
    };

    @Override
    public Integer updateArticle(Article article){
        return articleMapper.updateArticle(article);
    };

    @Override
    public Integer removeArticle(Integer id){
        return articleMapper.removeArticle(id);
    };

}
