package com.app.cyb.cybparent.api.recommendation;

import com.app.cyb.cybparent.entity.recommendation.SArticle;


import java.util.List;

public interface RecommendationService {

    List<SArticle> article_recommendation(Integer user_id);


}
