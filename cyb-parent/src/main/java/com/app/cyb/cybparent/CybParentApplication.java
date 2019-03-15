package com.app.cyb.cybparent;

import com.app.cyb.cybparent.util.CybInterceptor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import java.util.Arrays;
import java.util.Properties;

@SpringBootApplication
public class CybParentApplication implements WebMvcConfigurer {

    public static void main(String[] args) {
        SpringApplication.run(CybParentApplication.class, args);
    }

//    @Bean
//    public StringRedisTemplate restTemplate(){
//        return  new StringRedisTemplate();
//    }

    @Bean
    public JavaMailSender mailSender(){
        final Properties props=new Properties();
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.setProperty("mail.transport.protocol", "smtp");// 设置传输协议
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.qq.com");//QQ邮箱的服务器 如果是企业邮箱或者其他邮箱得更换该服务器地址
        props.put("mail.user", "qwwaq@qq.com");
        props.put("mail.password", "cjmftubnbpqgbgeb");
        JavaMailSenderImpl mailSender=new JavaMailSenderImpl();
        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        mailSender.setSession(mailSession);
        mailSender.setDefaultEncoding("UTF-8");
        return  mailSender;
    }

    @Bean
    public HandlerInterceptor getHandlerInterceptor(){
        return  new CybInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(getHandlerInterceptor()).addPathPatterns("/**");
    }
}
