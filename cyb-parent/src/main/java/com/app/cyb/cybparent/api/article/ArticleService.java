package com.app.cyb.cybparent.api.article;
import com.app.cyb.cybparent.entity.article.Article;
import java.util.List;

public interface ArticleService {
    Integer insertArticle(Article article);
    List<Integer> queryIdByTitle(String title);
    List<Article> queryByUserId(Integer userId);
    List<Article> queryByModuleId(Integer moduleId);
    Article queryArticle(Integer id);
    Integer updateArticle(Article article);
    Integer removeArticle(Integer id);
}
