package com.app.cyb.cybparent.service.recommendation;

import com.app.cyb.cybparent.api.recommendation.RecommendationService;
import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.mapper.recommendation.RecommendationMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class RecommendationServiceImpl implements RecommendationService{

    @Resource
    RecommendationMapper recommendationMapper;

    @Override
    public List<Article> article_recommendation(Integer user_id){
        return recommendationMapper.article_recommendation(user_id);
    }

}
