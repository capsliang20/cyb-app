package com.app.cyb.cybparent.controller.article;
import com.app.cyb.cybparent.api.article.CommentService;
import com.app.cyb.cybparent.api.article.ProjectService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.article.Project;
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
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@RestController
@Slf4j
@RequestMapping(value = "project")
public class projectController {
    @Resource
    ProjectService ProjectService;

    @RequestMapping(value = "showProjectDetails", method = RequestMethod.GET)
    ReturnType showProjectDetails(@Param("id") Integer id, HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Project project = new Project();
        project = ProjectService.queryProject(id);
        project.setClickRate(project.getClickRate()+1);
        data.put("code", 1);
        data.put("id", project.getId());
        data.put("imageAddress", project.getAddress());
        data.put("company", project.getCompany());
        data.put("website", project.getWebsite());
        data.put("establishTime", project.getEstablishTime());
        data.put("address", project.getAddress());
        data.put("abstr", project.getAbstr());
        data.put("state", project.getState());
        data.put("userId", project.getUserId());
        data.put("focusRate", project.getFocusRate());
        data.put("clickRate", project.getClickRate());
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "createProject", method = RequestMethod.GET)
    ReturnType createProject(@Param("userId") Integer userId, HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        data.put("code", 1);
        data.put("userId", userId);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "newProjectSubmit", method = RequestMethod.POST)
    ReturnType newProjectSubmit(@Param("imageAddress") String imageAddress,
                                @Param("company") String company,
                                @Param("website") String website,
                                @Param("establishTime") Date establishTime,
                                @Param("address") String address,
                                @Param("abstr") String abstr,
                                @Param("state") String state,
                                @Param("userId") Integer userId,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Project project = new Project(0,imageAddress,company,website,establishTime,address,abstr,state,0,userId,0,0);
        ProjectService.insertProject(project);
        data.put("code", 1);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "updateProject", method = RequestMethod.GET)
    ReturnType updateProject(@Param("id") Integer id,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Project project = ProjectService.queryProject(id);
        data.put("id", project.getId());
        data.put("imageAddress", project.getImageAddress());
        data.put("company", project.getCompany());
        data.put("website", project.getWebsite());
        data.put("address", project.getAddress());
        data.put("abstr", project.getAbstr());
        data.put("state", project.getState());
        data.put("code", 1);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "projectSubmit", method = RequestMethod.POST)
    ReturnType projectSubmit(@Param("id") Integer id,
                             @Param("imageAddress") String imageAddress,
                             @Param("company") String company,
                             @Param("website") String website,
                             @Param("address") String address,
                             @Param("abstr") String abstr,
                             @Param("state") String state, HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Project project = ProjectService.queryProject(id);
        project.setImageAddress(imageAddress);
        project.setCompany(company);
        project.setWebsite(website);
        project.setAddress(address);
        project.setAbstr(abstr);
        project.setState(state);
        ProjectService.updateProject(project);
        data.put("code", 1);
        return ReturnType.ok("success", data);
    };

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    ReturnType delete(@Param("id") Integer id,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        ProjectService.removeProject(id);
        data.put("code", 1);
        return ReturnType.ok("success");
    }

    @RequestMapping(value = "focus", method = RequestMethod.GET)
    ReturnType follow(@Param("id") Integer id,@Param("userId") Integer userId,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        Project project = ProjectService.queryProject(id);
        project.setFocusRate(project.getFocusRate()+1);
        ProjectService.updateProject(project);
        data.put("code", 1);
        return ReturnType.ok("success");
    }

    @RequestMapping(value = "manageProject", method = RequestMethod.GET)
    ReturnType manageArticle(@Param("userId") Integer userId,HttpServletRequest httpServletRequest) {
        Map data = new HashMap();
        List<Project> articleList = ProjectService.queryByUserId(userId);
        data.put("articleList", articleList);
        data.put("code", 1);
        return ReturnType.ok("success", data);
    }
}
