package com.app.cyb.cybparent.api;


import com.app.cyb.cybparent.entity.Demo;

public interface DemoService {
    Integer insertDemo(Demo demo);
    Demo selectDemo(Integer id);
    Integer deleteDemo(Integer id);
    Integer updateDemo(Demo demo);
}
