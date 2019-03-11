package com.app.cyb.cybparent.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.concurrent.TimeUnit;

@Component
@Slf4j
public class CybInterceptor implements HandlerInterceptor {

    @Autowired
    StringRedisTemplate redisTemplate;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        log.info("{} get into the system.",session.getId());
        String account = redisTemplate.opsForValue().get(session.getId());

        if(account==null||account.equals("")) {
            log.info("account is null, please log in or register! ");
            redisTemplate.opsForValue().set(session.getId(), "unknown", MessageUtil.CACHE_TIME, TimeUnit.MINUTES);
        }
        else {
            log.info("account: {} active",account);
            redisTemplate.opsForValue().set(session.getId(), account, MessageUtil.CACHE_TIME, TimeUnit.MINUTES);
        }


//        System.out.println(request.getContextPath());
//        System.out.println(request.getServletPath());
//
//        response.sendRedirect("/cyb_app/user/verification?account=root");

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        //System.out.println("Interceptor stop~~~~~~~~~~~`");
    }
}
