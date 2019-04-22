package com.app.cyb.cybparent.service.article;

import com.app.cyb.cybparent.api.article.ArticleService;
import com.app.cyb.cybparent.entity.article.Article;
import com.app.cyb.cybparent.mapper.article.ArticleMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

import javax.annotation.Resource;

@Service
@Transactional
public class ArticleServicelmpl implements ArticleService {
    @Resource
    ArticleMapper articleMapper;

    @Override
    public Integer insertArticle(Article article){
        return articleMapper.insertArticle(article);
    };

    @Override
    public List<Article> queryIdByTitle(String title){
        return articleMapper.queryIdByTitle(title);
    };

    @Override
    public List<Article> queryIdByUserId(String userId){
        return articleMapper.queryIdByUserId(userId);
    };

    @Override
    public Article queryArticle(Integer id){
        return articleMapper.queryArticle(id);
    };

    @Override
    public Integer updateContent(Integer id,String content){
        return articleMapper.updateContent(id, content);
    };

    @Override
    public Integer removeArticle(Integer id){
        return articleMapper.removeArticle(id);
    };

}
