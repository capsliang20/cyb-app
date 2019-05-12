package com.app.cyb.cybparent.controller.article;
import com.app.cyb.cybparent.api.article.ArticleService;
import com.app.cyb.cybparent.api.article.CommentService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.article.Article;
import com.app.cyb.cybparent.entity.user.User;
import com.app.cyb.cybparent.entity.article.Comment;
import com.app.cyb.cybparent.util.AccountType;
import com.app.cyb.cybparent.util.MessageUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Insert;
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
import java.util.Date;

@RestController
@Slf4j
@RequestMapping(value = "comment")

public class commentController {

    @Resource
    CommentService CommentService;

    @RequestMapping(value = "commentToArticle", method = RequestMethod.POST)
    ReturnType commentToArticle(@Param("id") Integer id,@Param("userId") Integer userId,@Param("content") String content,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Date time = new Date();
        Comment comment = new Comment(0,userId,id,0,0,content,time);
        CommentService.insertComment(comment);
        data.put("time", time);
        data.put("code", 1);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "commentToComment", method = RequestMethod.POST)
    ReturnType commentToComment(@Param("commentId") Integer id,@Param("articleId") Integer articleId,@Param("userId") Integer userId,@Param("content") String content,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Date time = new Date();
        Comment comment = new Comment(0,userId,articleId,1,id,content,time);
        CommentService.insertComment(comment);
        data.put("time", time);
        data.put("code", 1);
        return ReturnType.ok("success", data);
    };



}
