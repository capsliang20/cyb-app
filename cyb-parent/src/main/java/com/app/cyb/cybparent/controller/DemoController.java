package com.app.cyb.cybparent.controller;

import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
@Slf4j
public class DemoController {
    @Resource
    DemoService demoService;
    @RequestMapping(method = RequestMethod.GET)
    Map resultMap() {
        Map map=new HashMap();
        log.info("default demo controller");
        map.put("key", "value");
        return map;
    }

    @RequestMapping(value = "demo",method = RequestMethod.GET)
    Demo queryDemo(@RequestParam("id") Integer id){
        log.info("query demo info with param id={}",id);
        return demoService.selectDemo(id);
    }

}
