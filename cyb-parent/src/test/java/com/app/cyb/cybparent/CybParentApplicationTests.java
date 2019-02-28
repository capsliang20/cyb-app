package com.app.cyb.cybparent;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CybParentApplicationTests {

    @Resource
    private StringRedisTemplate stringRedisTemplate;


    @Test
    public void contextLoads() {
        stringRedisTemplate.opsForValue().set("key", "value", 5, TimeUnit.SECONDS);
    }

}
