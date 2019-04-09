package com.app.cyb.cybparent.controller.recommendation;


import com.app.cyb.cybparent.api.recommendation.RecommendationService;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.util.MessageUtil;
import io.lettuce.core.dynamic.annotation.Param;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
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
        if (articles != null) {
            data.put("articles:", articles);
            return ReturnType.ok("success", data);
        }else{
            return ReturnType.failure("failure");
        }

    }


    @RequestMapping(value = "test", method = RequestMethod.GET)
    ReturnType test(HttpServletRequest httpServletRequest) {
        HttpSession sesssion = httpServletRequest.getSession();
        System.out.println("sessionId= " + sesssion.getId() + " , account= " + redisTemplate.opsForValue().get(sesssion.getId()));
        return ReturnType.ok("success");
    }


}