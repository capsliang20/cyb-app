package com.app.cyb.cybparent.controller;

import com.alibaba.fastjson.JSON;
import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.util.MessageUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

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


//    @RequestMapping(value = "file",method = RequestMethod.POST)
//    @ResponseBody
//    ReturnType test(@RequestParam("file")MultipartFile multipartFile){
////        System.out.println(JSON.toJSONString(multipartFile));
//        Map resultMap=new HashMap();
//        try {
//            System.out.println(MessageUtil.USER_DIR_TMP_PATH+multipartFile.getOriginalFilename());
//            multipartFile.transferTo(Paths.get(MessageUtil.USER_DIR_TMP_PATH,multipartFile.getOriginalFilename()));
//            resultMap.put("fileName", multipartFile.getOriginalFilename());
//            return ReturnType.ok("上传成功",resultMap );
//        } catch (IOException e) {
//            e.printStackTrace();
//            return ReturnType.failure("上传失败");
//        }
//
//    }

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
