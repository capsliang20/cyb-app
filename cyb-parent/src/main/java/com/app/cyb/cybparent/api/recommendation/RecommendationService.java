package com.app.cyb.cybparent.api.recommendation;

import com.app.cyb.cybparent.entity.recommendation.Article;


import java.util.List;

public interface RecommendationService {

    List<Article> article_recommendation(Integer user_id);



}
