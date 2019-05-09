package com.app.cyb.cybparent.controller.article;
import com.app.cyb.cybparent.api.article.ArticleService;
import com.app.cyb.cybparent.api.article.CommentService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.article.Article;
import com.app.cyb.cybparent.entity.article.Comment;
import com.app.cyb.cybparent.entity.user.User;
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

@RestController
@Slf4j
@RequestMapping(value = "article")

public class articleController {

    @Resource
    ArticleService ArticleService;
    CommentService CommentService;

    //show article details
    //即点开文章之后
    @RequestMapping(value = "showArticleDetails", method = RequestMethod.GET)
    ReturnType showArticleDetails(@Param("id") Integer id, HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Article article = new Article(id, "", "", 0,0,0,0);
        article = ArticleService.queryArticle(id);
        article.setClickRate(article.getClickRate()+1);
        data.put("userId", article.getUserId());
        data.put("title", article.getTitle());
        data.put("content", article.getContent());
        data.put("clickRate", article.getClickRate());
        data.put("moduleId", article.getModuleId());
        data.put("followRate", article.getFollowRate());
        data.put("commentList",CommentService.queryComment(id));

        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "createArticle", method = RequestMethod.GET)
    ReturnType createArticle(@Param("id") Integer id, HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        data.put("id", id);
        //data.put("commentList", comment);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "newArticleSubmit", method = RequestMethod.POST)
    ReturnType newArticleSubmit(@Param("userId") Integer userId,@Param("content") String content,@Param("title") String title,@Param("moduleId") Integer moduleId,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Article article = new Article(0, title, content, userId,0,moduleId,0);
        ArticleService.insertArticle(article);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "updateArticle", method = RequestMethod.GET)
    ReturnType updateArticle(@Param("id") Integer id,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Article article = ArticleService.queryArticle(id);
        data.put("id", article.getId());
        data.put("title", article.getTitle());
        data.put("content", article.getContent());
        data.put("moduleId", article.getModuleId());
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "articleSubmit", method = RequestMethod.POST)
    ReturnType articleSubmit(@Param("id") Integer id,@Param("content") String content,@Param("title") String title,@Param("moduleId") Integer moduleId,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Article article = ArticleService.queryArticle(id);
        article.setContent(content);
        article.setTitle(title);
        article.setModuleId(moduleId);
        ArticleService.insertArticle(article);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    ReturnType delete(@Param("id") Integer id,HttpServletRequest httpServletRequest) {
        ArticleService.removeArticle(id);
        return ReturnType.ok("success");
    }

    @RequestMapping(value = "follow", method = RequestMethod.GET)
    ReturnType follow(@Param("id") Integer id,HttpServletRequest httpServletRequest) {
        Article article = ArticleService.queryArticle(id);
        article.setFollowRate(article.getFollowRate()+1);
        return ReturnType.ok("success");
    }

    @RequestMapping(value = "manageArticle", method = RequestMethod.GET)
    ReturnType manageArticle(@Param("userId") Integer userId,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        ArticleService.queryArticle(userId);
        return ReturnType.ok("success", data);
    }




}
