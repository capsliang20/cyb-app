package com.app.cyb.cybparent.api.user;


import com.app.cyb.cybparent.entity.user.User;

public interface UserService {
    Integer insertUser(User user);
    User userLogin(String account,String password);
    User queryUser(Integer id);
    Integer updatePassword(Integer id,String password);
    Integer removeUser(Integer id);
}
