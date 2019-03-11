package com.app.cyb.cybparent.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter(urlPatterns = "/*",filterName = "cybFilter")
@Component
@Slf4j
public class CybFilter implements Filter {


    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //System.out.println("start: doFilter");
        filterChain.doFilter(servletRequest, servletResponse);
        //System.out.println("stop: doFilter");

    }
}
