package com.app.cyb.cybparent.util;


import com.alibaba.fastjson.JSON;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.google.gson.Gson;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MessageUtil {




    public static boolean sendEmail(JavaMailSender mailSender, String to, int key){
        try {
            SpringTemplateEngine thymeleaf=new SpringTemplateEngine();
            MimeMessage message=mailSender.createMimeMessage();
            MimeMessageHelper helper=new MimeMessageHelper(message,true);
            helper.setFrom("qwwaq@qq.com");
            helper.setTo(to);
            helper.setSubject("创业帮");
            Context ctx=new Context();
            ctx.setVariable("password", key);
            String emailText=thymeleaf.process("<!doctype html><html><body>验证码：<i><span th:text=\"${password}\"></span></i>。请勿告诉他人。(十五分钟有效)</body></html>", ctx);
            helper.setText(emailText,true);
            mailSender.send(message);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    //手机短信
    public static boolean sendPhoneMessage(String phoneNumber,int key){//phoneNumber name
        final String product="Dysmsapi";
        final String domain = "dysmsapi.aliyuncs.com";

        final String accessKeyId="LTAIcxkZHWikXqxx";
        final String accessKeySecret="5esNdJU081PPJwl6btmnNmYrmi2UKg";


        try {
            IClientProfile profile=DefaultProfile.getProfile("cn-hangzhou", accessKeyId,accessKeySecret);
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
            IAcsClient acsClient = new DefaultAcsClient(profile);

            SendSmsRequest request=new SendSmsRequest();
            request.setMethod(MethodType.POST);

            request.setPhoneNumbers(phoneNumber);
            request.setSignName("心愿瓶");
            request.setTemplateCode("SMS_137655525");
            request.setTemplateParam("{\"code\":\""+key+"\"}");

            SendSmsResponse sendSmsResponse=acsClient.getAcsResponse(request);
            if(sendSmsResponse.getCode()!=null&&sendSmsResponse.getCode().equals("OK")){
                return true;
            }
            else
                System.out.println(JSON.toJSONString(sendSmsResponse));
            return false;
        }

        catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return false;
        }
    }




}
