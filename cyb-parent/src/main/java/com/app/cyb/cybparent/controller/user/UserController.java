package com.app.cyb.cybparent.controller.user;

import com.app.cyb.cybparent.api.user.UserService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.user.User;
import com.app.cyb.cybparent.util.AccountType;
import com.app.cyb.cybparent.util.MessageUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@RestController
@Slf4j
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    StringRedisTemplate redisTemplate;

    @Resource
    UserService userService;

    @Autowired
    JavaMailSender mailSender;


    /**
     * 注册， 注册成功自动登录
     *
     * @param name
     * @param account
     * @param password
     * @param code
     * @return
     */
    @RequestMapping(value = "register", method = RequestMethod.GET)
    ReturnType register(@Param("name") String name, @Param("account") String account, @Param("password") String password, @Param("code") String code, HttpServletRequest httpServletRequest) {
        log.info("user register. name={}, account={}, password={}, code={}", name, account, password, code);
        Map data = new HashMap();
        String verifyCode = redisTemplate.opsForValue().get(account);
        if (code != null && code.equals(verifyCode)) {
            User user = new User(null, name, account, password);
            Integer userId = userService.insertUser(user);
            if (userId != null && userId != 0) {
                redisTemplate.opsForValue().set(httpServletRequest.getSession().getId(), account, MessageUtil.CACHE_TIME, TimeUnit.MINUTES);
                data.put("userId", userId);
                data.put("account", account);
                data.put("name", name);
                return ReturnType.ok("success", data);
            } else
                return ReturnType.failure("account: " + account + " already exists!");
        } else
            return ReturnType.failure("validation failure");
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    ReturnType login(@Param("account") String account, @Param("password") String password, @Param("code") String code, HttpServletRequest httpServletRequest) {
        log.info("user login. account={}, password={}, code={}", account, password, code);
        Map data = new HashMap();
        String verifyCode = redisTemplate.opsForValue().get(account);
        User user = null;
        if (code != null && code.equals(verifyCode)) {
            log.info("{} login with code.", account);
            user = userService.userLogin(account, null);
            if (user == null || user.getId() == null)
                return ReturnType.failure("login failure, verification code error");

        } else {
            log.info("{} login with password.", account);
            user = userService.userLogin(account, password);
            if (user == null || user.getId() == null)
                return ReturnType.failure("login failure, password error");

        }


        redisTemplate.opsForValue().set(httpServletRequest.getSession().getId(), user.getAccount(), MessageUtil.CACHE_TIME, TimeUnit.MINUTES);
        data.put("userId", user.getId());
        data.put("account", user.getAccount());
        data.put("name", user.getName());
        return ReturnType.ok("login successful", data);

    }

    @RequestMapping(value = "logout" ,method = RequestMethod.GET)
    ReturnType logout(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        String account = redisTemplate.opsForValue().get(session.getId());
        log.info("account: {} logout.",account);
        redisTemplate.delete(session.getId());
        httpServletRequest.getSession().invalidate();
        return ReturnType.ok("logout successful");
    }


    /**
     * 获取验证码
     *
     * @param account            账号信息
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "verification", method = RequestMethod.GET)
    ReturnType verification(@Param("account") String account, HttpServletRequest httpServletRequest) {
        AccountType accountType = MessageUtil.accountType(account);
        HttpSession sessioin = httpServletRequest.getSession();
        String code = redisTemplate.opsForValue().get(account);
        Map data = new HashMap();
        data.put("account", account);
        if (code == null || code.equals("")) {
            code = MessageUtil.getVerificationCode();
            final String sendCode=code;
            if (accountType == AccountType.ERROR)
                return ReturnType.failure("error account: " + account);
            if (accountType == AccountType.PHONENUMBER) {
                Future<?> future = MessageUtil.executorService.submit(() -> {
                    MessageUtil.sendPhoneMessage(account, sendCode);
                });
                redisTemplate.opsForValue().set(account, code, MessageUtil.CACHE_TIME, TimeUnit.MINUTES);
                data.put("code", code);
                return ReturnType.ok("success", data);

            } else if (accountType == AccountType.EMAIL) {
                MessageUtil.executorService.submit(()->{
                    MessageUtil.sendEmail(mailSender, account, sendCode);
                });

                redisTemplate.opsForValue().set(account, code, MessageUtil.CACHE_TIME, TimeUnit.MINUTES);
                data.put("code", code);
                return ReturnType.ok("success", data);

            }
        }
        data.put("code", code);
        return ReturnType.ok("success", data);
    }


    @RequestMapping(value = "test", method = RequestMethod.GET)
    ReturnType test(HttpServletRequest httpServletRequest) {
        HttpSession sesssion = httpServletRequest.getSession();
        System.out.println("sessionId= " + sesssion.getId() + " , account= " + redisTemplate.opsForValue().get(sesssion.getId()));
        return ReturnType.ok("success");
    }


}
