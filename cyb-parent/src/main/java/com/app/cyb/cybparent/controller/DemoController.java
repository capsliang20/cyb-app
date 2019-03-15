package com.app.cyb.cybparent.controller;

import com.alibaba.fastjson.JSON;
import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.util.MessageUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@Slf4j
@RequestMapping(value = "demo")
public class DemoController {
    @Resource
    DemoService demoService;

    @Resource
    JavaMailSender mailSender;

    @Autowired
    StringRedisTemplate redisTemplate;

    @RequestMapping(value = "index",method = RequestMethod.GET)
    String resultMap(HttpSession httpSession) {
        return "index";
    }


    @RequestMapping(value = "test",method = RequestMethod.GET)
    @ResponseBody
    String test(HttpSession httpSession) {
        return "test";
    }

//    @RequestMapping(value = "demo",method = RequestMethod.GET)
//    Demo queryDemo(@RequestParam("id") Integer id){
//        log.info("query demo info with param id={}",id);
//        return demoService.selectDemo(id);
//    }
//
//    @RequestMapping(value = "email",method = RequestMethod.GET)
//    String queryDemo(){
//        MessageUtil.sendEmail(mailSender, "qwwaq@qq.com", "151515");
//        return "sadasd";
//    }

}
