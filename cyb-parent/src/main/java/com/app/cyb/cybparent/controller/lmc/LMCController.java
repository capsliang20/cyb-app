package com.app.cyb.cybparent.controller.lmc;

import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@Slf4j
@RequestMapping(value = "lmc")
public class LMCController {
    @Resource
    DemoService demoService;

    @Resource
    JavaMailSender mailSender;

    @Autowired
    StringRedisTemplate redisTemplate;

//    @RequestMapping(method = RequestMethod.GET)
//    Map resultMap(HttpSession httpSession) {
//        System.out.println(JSON.toJSONString(httpSession));
//        System.out.println(httpSession.isNew());
//        httpSession.invalidate();
//        return new HashMap();
//    }

    @RequestMapping(value = "demo",method = RequestMethod.GET)
    Demo queryDemo(@RequestParam("id") Integer id){
        log.info("query demo info with param id={}",id);
        return demoService.selectDemo(id);
    }
//
//    @RequestMapping(value = "email",method = RequestMethod.GET)
//    String queryDemo(){
//        MessageUtil.sendEmail(mailSender, "qwwaq@qq.com", "151515");
//        return "sadasd";
//    }

}
