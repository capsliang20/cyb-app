package com.app.cyb.cybparent.service.recommendation;

import com.app.cyb.cybparent.api.recommendation.RecommendationService;
import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.mapper.recommendation.RecommendationMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class RecommendationServiceImpl implements RecommendationService{

    @Resource
    RecommendationMapper recommendationMapper;

    @Override
    public List<Article> article_recommendation(Integer user_id){
        List<Integer> article_id = recommendationMapper.articleidByUserID(user_id);
        List<Article> articles = new ArrayList<>();
        for(int i= 0; i < article_id.size();i++){
            Article article = recommendationMapper.articleByID(article_id.get(i));
            String module_name = recommendationMapper.moduleNameByID(article.getModule_id());
            articles.add(new Article(article.getId(),article.getTitle(),article.getModule_id(),module_name));
        }
        return articles;
    }

}
