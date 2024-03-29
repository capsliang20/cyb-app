package com.app.cyb.cybparent.service.user;

import com.app.cyb.cybparent.api.user.UserService;
import com.app.cyb.cybparent.entity.user.User;
import com.app.cyb.cybparent.mapper.user.UserMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Override
    public Integer insertUser(User user) {
        Integer verifyId=userMapper.queryIdByAccount(user.getAccount());
        if(verifyId==null||verifyId==0) {
            userMapper.insertUser(user);
            return user.getId();
        }
        else
            return null;
    }

    @Override
    public User userLogin(String account, String password) {
        if(password==null||password.equals("")){            //通过验证码登录且已验证
            return userMapper.queryUserByAccount(account);
        }
        else{
            String verifyPassword=userMapper.queryPasswordByAccount(account);
            if (password.equals(verifyPassword))
                return userMapper.queryUserByAccount(account);
            else
                return null;
        }
    }

    @Override
    public User queryUser(Integer id) {
        return userMapper.queryUser(id);
    }

    @Override
    public Integer update(User user) {
        return userMapper.updateInfo(user);
    }

    @Override
    public Integer updatePassword(Integer id, String password) {
        return userMapper.updatePassword(id, password);
    }

    @Override
    public Integer removeUser(Integer id) {
        return userMapper.removeUser(id);
    }
}
