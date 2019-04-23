package com.app.cyb.cybparent.service;


import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.mapper.DemoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DemoServiceImpl implements DemoService {

    @Resource
    DemoMapper demoMapper;

    @Override
    public Integer insertDemo(Demo demo) {
        demoMapper.insertDemo(demo);
        return demo.getDemo_id();
    }

    @Override
    public Demo selectDemo(Integer id) {
        return demoMapper.selectDemo(id);
    }

    @Override
    public Integer deleteDemo(Integer id) {
        return demoMapper.deleteDemo(id);
    }

    @Override
    public Integer updateDemo(Demo demo) {
        return demoMapper.updateDemo(demo);
    }
}
