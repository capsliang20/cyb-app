package com.app.cyb.cybparent.api.recommendation;

import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.entity.recommendation.Project;
import com.app.cyb.cybparent.entity.recommendation.User;


import java.util.List;

public interface RecommendationService {

    List<Article> article_recommendation(Integer user_id);
    List<Project> project_recommendation(Integer user_id);
    List<User> user_recommendation(Integer user_id);
}
