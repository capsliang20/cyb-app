package com.app.cyb.cybparent.api.article;
import com.app.cyb.cybparent.entity.article.Article;
import java.util.List;

public interface ArticleService {
    Integer insertArticle(Article article);
    List<Article> queryIdByTitle(String title);
    List<Article> queryIdByUserId(String userId);
    Article queryArticle(Integer id);
    Integer updateContent(Integer id,String content);
    Integer removeArticle(Integer id);
}
