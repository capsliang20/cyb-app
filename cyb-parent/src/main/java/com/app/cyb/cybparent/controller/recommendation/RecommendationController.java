package com.app.cyb.cybparent.controller.recommendation;


import com.app.cyb.cybparent.api.recommendation.RecommendationService;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.entity.recommendation.Project;
import com.app.cyb.cybparent.entity.recommendation.User;
import io.lettuce.core.dynamic.annotation.Param;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Null;

@RestController
@Slf4j
@RequestMapping(value = "recommendation")
public class RecommendationController {

    @Autowired
    StringRedisTemplate redisTemplate;

    @Resource
    RecommendationService recommendationService;

    @RequestMapping(value = "article", method = RequestMethod.GET)
    ReturnType article(@Param("user_id") Integer user_id, HttpServletRequest httpServletRequest) {
        log.info("recommendation article. user_id={}", user_id);
        Map data = new HashMap();
        List<Article> articles = recommendationService.article_recommendation(user_id);
        if (articles.size() > 0) {
            data.put("articles", articles);
            return ReturnType.ok("success", data);
        }else{
            return ReturnType.failure("failure");
        }

    }

    @RequestMapping(value="project", method = RequestMethod.GET)
    ReturnType project(@Param("user_id") Integer user_id, HttpServletRequest httpServletRequest){
        log.info("recommendation project. user_id={}", user_id);
        Map data = new HashMap();
        List<Project> projects = recommendationService.project_recommendation(user_id);
        if (projects.size() > 0) {
            data.put("projects", projects);
            return ReturnType.ok("success", data);
        }else{
            return ReturnType.failure("failure");
        }
    }

    @RequestMapping(value="user", method = RequestMethod.GET)
    ReturnType user(@Param("user_id") Integer user_id, HttpServletRequest httpServletRequest){
        log.info("recommendation user. user_id={}", user_id);
        Map data = new HashMap();
        List<User> users_rmd = recommendationService.user_recommendation(user_id);
        if (users_rmd.size() > 0) {
            data.put("users", users_rmd);
            return ReturnType.ok("success", data);
        }else{
            return ReturnType.failure("failure");
        }
    }

    @RequestMapping(value="hot", method = RequestMethod.GET)
    ReturnType hot( HttpServletRequest httpServletRequest){
        log.info("recommendation hot.");
        Map data = new HashMap();
        List<User> users_rmd = recommendationService.user_hot();
        List<Article> article_rmd = recommendationService.article_hot();
        List<Project> project_rmd = recommendationService.project_hot();
        data.put("articles", article_rmd);
        data.put("projects", project_rmd);
        data.put("users", users_rmd);
        return ReturnType.ok("success", data);
    }


    @RequestMapping(value = "test", method = RequestMethod.GET)
    ReturnType test(HttpServletRequest httpServletRequest) {
        HttpSession sesssion = httpServletRequest.getSession();
        System.out.println("sessionId= " + sesssion.getId() + " , account= " + redisTemplate.opsForValue().get(sesssion.getId()));
        return ReturnType.ok("success");
    }
}

