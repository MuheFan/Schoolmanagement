package com.dletc.mapper;


import com.dletc.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    User verifyAP(@Param("uaccounts") String uaccounts, @Param("upassword")String upassword);

   User FindUserByname(@Param("uaccounts") String uaccounts);

   int UpdateUser(User user);

   int UpdateUserUpImg(User user);

}
