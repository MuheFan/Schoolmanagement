package com.dletc.service;


import com.dletc.entity.User;
import com.dletc.mapper.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

//    获取用户
    public User verifyAP( String uaccounts,String upassword){
      return   userMapper.verifyAP(uaccounts,upassword);
    }

    public User FindUserByname(String uaccounts) {
        return userMapper.FindUserByname(uaccounts);
    }

    public  int UpdateUser(User user) {
        return userMapper.UpdateUser(user);
    }

    public int UpdateUserUpImg(User user){
        return userMapper.UpdateUserUpImg(user);
    }

}
