package com.app.cyb.cybparent.service.recommendation;

import com.app.cyb.cybparent.api.recommendation.RecommendationService;
import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.entity.recommendation.Project;
import com.app.cyb.cybparent.entity.recommendation.User;
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
        List<Integer> article_id = recommendationMapper.articleIDByUserID(user_id);
        List<Article> articles = new ArrayList<>();
        for(int i= 0; i < article_id.size(); ++i){
            Article article = recommendationMapper.articleByID(article_id.get(i));
            String module_name = recommendationMapper.moduleNameByID(article.getModule_id());
            article.setModule_name(module_name);
            articles.add(article);
        }
        return articles;
    }

    @Override
    public List<Project> project_recommendation(Integer user_id){
        List<Integer> project_id = recommendationMapper.projectIDByUserID(user_id);
        List<Project> projects = new ArrayList<>();
        for(int i=0; i < project_id.size(); ++i){
            Project project = recommendationMapper.projectByID(project_id.get(i));
            String module_name = recommendationMapper.moduleNameByID(project.getModule_id());
            project.setModule_name(module_name);
            projects.add(project);
        }
        return projects;
    }

    @Override
    public List<User> user_recommendation(Integer user_id){
        List<Integer> userid_rmd = recommendationMapper.useridRmdByUserid(user_id);
        List<User> users_rmd = new ArrayList<>();
        for(int i=0; i < userid_rmd.size(); ++i){
            User user = recommendationMapper.userByID(userid_rmd.get(i));
            users_rmd.add(user);
        }
        return users_rmd;
    }

}
