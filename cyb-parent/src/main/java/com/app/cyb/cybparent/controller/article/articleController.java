package com.app.cyb.cybparent.controller.article;
import com.app.cyb.cybparent.api.article.ArticleService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.article.Article;
import com.app.cyb.cybparent.util.AccountType;
import com.app.cyb.cybparent.util.MessageUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;


@RestController
@Slf4j
@RequestMapping(value = "article")

public class articleController {


    @Resource
    ArticleService ArticleService;



    //show article details
    //即点开文章之后
    @RequestMapping(value = "showArticleDetails", method = RequestMethod.POST)
    ReturnType showArticleDetails(@Param("id") Integer id, HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        return ReturnType.ok("success", data);
    };



}
